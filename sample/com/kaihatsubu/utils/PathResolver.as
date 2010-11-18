package com.kaihatsubu.utils {

  /**
   *  PathResolver
   *  @author Hideaki Tanabe
   */
  public class PathResolver {

    /**
     *  relative path to absolute path
     *  @param base current dir
     *  @param target target path
     *  @return absolute path
     */
    public static function getAbsolutePath(base:String, target:String):String {
      var result:String = base.match(/^\/.*\//)[0];
      var tree:Array = target.split(/\//);
      var fileName:String = tree.pop();

      while (tree.length > 0) {
        var next:String = tree.shift();
        //upper dir
        if (/^\.\.$/.test(next)) {
          result = result.replace(/[^\/]+\/$/, "");
          //dir
        } else {
          result += next + "/";
        }
      }
      result += fileName;
      return result;
    }
  }
}
