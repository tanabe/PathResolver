#PathResolver
---
相対パスを絶対パスに変換する ActionScript ライブラリ。

##基本的な使い方
PathResolver.getAbsolutePath メソッドの第 1 引数にベースとなるパス、第 2 引数にベースとなるパスからの相対パスを指定します。  
戻り値として変換された絶対パスを返します。  

    import com.kaihatsubu.utils.PathResolver;
    PathResolver.getAbsolutePath("/contents/hoge/swf/", "../../foo/index.html");
    //→/contents/foo/index.html
