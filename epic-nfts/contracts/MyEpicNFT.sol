// MyEpicNFT.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

// インポートした OpenZeppelin のコントラクトを継承しています。
// 継承したコントラクトのメソッドにアクセスできるようになります。

contract MyEpicNFT is ERC721URIStorage {
    //openzeeplin が tokenIds を簡単に追跡するために提供するライブラリを呼び出しています
    using Counters for Counters.Counter;

    // _tokenIdsを初期化(_tokenIds = 0)
    Counters.Counter private _tokenIds;

    //NFTトークンの名前とそのシンボルを渡します
    constructor() ERC721("TanyaNFT", "TANYA") {
        console.log("This is my NFT contract");
    }

    //ユーザーがNFTを取得するために実行する関数
    function makeAnEpicNFT() public {
        //現在のtokenIdを取得します tokenIdは0から始まります
        uint256 newItemId = _tokenIds.current();

        //msg.senderを使ってNFTを送信者にmintする
        _safeMint(msg.sender, newItemId);

        //NFTデータを設定
        _setTokenURI(newItemId, "https://api.npoint.io/b68869895a4f6ef19ab0");

        //NFTがいつ誰に作成されたか確認
        console.log(
            "An NFT w/ ID %s has been minted to %s",
            newItemId,
            msg.sender
        );

        //次のNFTがmintされる時のカウンターをインクリメントする
        _tokenIds.increment();
    }
}
