.class Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$FolderParser;
.super Ljava/lang/Object;
.source "AutoInstallGooglePlayConfigParser.java"

# interfaces
.implements Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderParser"
.end annotation


# instance fields
.field private final mFolderElements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;


# direct methods
.method public constructor <init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)V
    .locals 1

    .line 599
    invoke-static {p1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$mgetFolderElementsMap(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$FolderParser;-><init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Ljava/util/HashMap;)V

    .line 600
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;",
            ">;)V"
        }
    .end annotation

    .line 602
    .local p2, "elements":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;>;"
    iput-object p1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$FolderParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput-object p2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$FolderParser;->mFolderElements:Ljava/util/HashMap;

    .line 604
    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 6
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    const-string v0, "title"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$smgetAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    .line 611
    .local v0, "titleResId":I
    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 612
    iget-object v3, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$FolderParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    iget-object v3, v3, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$FolderParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v4}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmCurrentFolderId(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 624
    return-wide v1

    .line 627
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$FolderParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-virtual {v1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->generateFolderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fputmCurrentFolderId(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Ljava/lang/String;)V

    .line 629
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$FolderParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$FolderParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$FolderParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmCurrentFolderId(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "id"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$FolderParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmParseListener(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$FolderParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v2

    const-string v4, "folders"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5, v2}, Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;->handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 635
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$FolderParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$FolderParser;->mFolderElements:Ljava/util/HashMap;

    invoke-static {v1, p1, v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$mparseCustomizationXmlLevel(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V

    .line 638
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$FolderParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v1, v5}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fputmCurrentFolderId(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Ljava/lang/String;)V

    .line 640
    const-wide/16 v1, 0x0

    return-wide v1

    .line 617
    .end local v3    # "title":Ljava/lang/String;
    :cond_1
    return-wide v1
.end method
