.class Lcom/android/launcher3/LauncherModel$10;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->replaceCheck(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 922
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$10;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 925
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 926
    .local v0, "checkItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/AppInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$10;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/launcher3/LauncherModel;->-$$Nest$smgetCheckItems(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 927
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 928
    return-void

    .line 931
    :cond_0
    new-instance v1, Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$10;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;-><init>(Landroid/content/Context;)V

    .line 933
    .local v1, "xmlParser":Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;
    :try_start_0
    sget v2, Lcom/android/launcher3/R$xml;->default_replacements:I

    .line 934
    invoke-virtual {v1, v2}, Lcom/sonymobile/launcher/replacement/ReplacementsXmlParser;->parseReplacementsFromXML(I)Ljava/util/Map;

    move-result-object v2

    .line 935
    .local v2, "replaceMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$10;->val$context:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/android/launcher3/LauncherModel;->-$$Nest$smreplaceApp(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    .end local v2    # "replaceMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    goto :goto_0

    .line 936
    :catch_0
    move-exception v2

    .line 937
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "Launcher.Model"

    const-string v4, "XmlPullParserException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 939
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_0
    return-void
.end method
