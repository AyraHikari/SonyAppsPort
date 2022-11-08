.class Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;
.super Ljava/lang/Object;
.source "DefaultLayoutParser.java"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PartnerFolderParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/DefaultLayoutParser;

    .line 273
    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v0, v0, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lcom/android/launcher3/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;

    move-result-object v0

    .line 280
    .local v0, "partner":Lcom/android/launcher3/Partner;
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 282
    .local v1, "partnerRes":Landroid/content/res/Resources;
    nop

    .line 283
    invoke-virtual {v0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 282
    const-string v3, "partner_folder"

    const-string v4, "xml"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 284
    .local v2, "resId":I
    if-eqz v2, :cond_0

    .line 285
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 286
    .local v3, "partnerParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v4, "folder"

    invoke-static {v3, v4}, Lcom/android/launcher3/AutoInstallsLayout;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 288
    new-instance v4, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;

    iget-object v5, p0, Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/DefaultLayoutParser;->getFolderElementsMap(Landroid/content/res/Resources;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;Landroid/util/ArrayMap;)V

    .line 289
    .local v4, "folderParser":Lcom/android/launcher3/AutoInstallsLayout$FolderParser;
    invoke-virtual {v4, v3}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v5

    return v5

    .line 292
    .end local v1    # "partnerRes":Landroid/content/res/Resources;
    .end local v2    # "resId":I
    .end local v3    # "partnerParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "folderParser":Lcom/android/launcher3/AutoInstallsLayout$FolderParser;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method
