.class public Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;
.super Ljava/lang/Object;
.source "AutoInstallGooglePlayConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$FolderParser;,
        Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$PendingWidgetParser;,
        Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;,
        Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AutoInstallParser;,
        Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser;,
        Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;
    }
.end annotation


# static fields
.field private static final ACTION_CONFIG_GOOGLE_PLAY_AUTO_INSTALL:Ljava/lang/String; = "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

.field private static final ATTR_CLASS_NAME:Ljava/lang/String; = "className"

.field private static final ATTR_CONTAINER:Ljava/lang/String; = "container"

.field private static final ATTR_CONTAINER_VALUE_HOTSEAT:Ljava/lang/String; = "hotseat"

.field private static final ATTR_ICON:Ljava/lang/String; = "icon"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_RANK:Ljava/lang/String; = "rank"

.field private static final ATTR_SCREEN:Ljava/lang/String; = "screen"

.field private static final ATTR_SPAN_X:Ljava/lang/String; = "spanX"

.field private static final ATTR_SPAN_Y:Ljava/lang/String; = "spanY"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_URL:Ljava/lang/String; = "url"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final ATTR_WORKSPACE:Ljava/lang/String; = "workspace"

.field private static final ATTR_X:Ljava/lang/String; = "x"

.field private static final ATTR_Y:Ljava/lang/String; = "y"

.field private static final DEFAULT_PANE:Ljava/lang/String; = "0"

.field protected static final LAYOUT_RES:Ljava/lang/String; = "default_layout"

.field protected static final SETTINGS_CONTAINER:Ljava/lang/String; = "container"

.field public static final SETTINGS_CONTAINER_ID_DESKTOP:Ljava/lang/String; = "desktop"

.field public static final SETTINGS_CONTAINER_ID_STAGE:Ljava/lang/String; = "stage"

.field protected static final SETTINGS_IS_AUTO_INSTALL:Ljava/lang/String; = "is_auto_install"

.field private static final TAG:Ljava/lang/String; = "AutoInstGPlayCfgPar"

.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_APP_ICON:Ljava/lang/String; = "appicon"

.field private static final TAG_AUTO_INSTALL:Ljava/lang/String; = "autoinstall"

.field private static final TAG_EXTRA:Ljava/lang/String; = "extra"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_WORKSPACE:Ljava/lang/String; = "workspace"


# instance fields
.field protected mAutoInstallConfigApkPackageName:Ljava/lang/String;

.field private mColumnCount:I

.field private mCurrentFolderId:Ljava/lang/String;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mParseListener:Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;

.field private mRowCount:I

.field protected mSourceRes:Landroid/content/res/Resources;

.field private mSupportsPositioning:Z

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentFolderId(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mCurrentFolderId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmParseListener(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mParseListener:Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mValues:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentFolderId(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mCurrentFolderId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetFolderElementsMap(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->getFolderElementsMap()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mparseCustomizationXmlLevel(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->parseCustomizationXmlLevel(Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parseListener"    # Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mRowCount:I

    .line 124
    iput v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mColumnCount:I

    .line 126
    iput-boolean v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mSupportsPositioning:Z

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mValues:Ljava/util/HashMap;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mCurrentFolderId:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mParseListener:Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 143
    return-void
.end method

.method private static beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    if-ne v1, v2, :cond_2

    .line 351
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    return-void

    .line 352
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 353
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "endValue"    # I

    .line 358
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 361
    .local v0, "x":I
    if-gez v0, :cond_0

    .line 362
    add-int v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 368
    .end local v0    # "x":I
    :cond_0
    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 370
    :cond_1
    :goto_0
    return-object p0
.end method

.method private static getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .locals 1
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 388
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 379
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFolderElementsMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;",
            ">;"
        }
    .end annotation

    .line 393
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 394
    .local v0, "parsers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;>;"
    new-instance v1, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser;-><init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser-IA;)V

    const-string v3, "appicon"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    new-instance v1, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AutoInstallParser;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AutoInstallParser;-><init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AutoInstallParser-IA;)V

    const-string v2, "autoinstall"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    new-instance v1, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;

    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;-><init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Landroid/content/res/Resources;)V

    const-string v2, "shortcut"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-object v0
.end method

.method private getLayoutElementsMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;",
            ">;"
        }
    .end annotation

    .line 402
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 403
    .local v0, "parsers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;>;"
    new-instance v1, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser;-><init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AppShortcutParser-IA;)V

    const-string v3, "appicon"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    new-instance v1, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AutoInstallParser;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AutoInstallParser;-><init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$AutoInstallParser-IA;)V

    const-string v3, "autoinstall"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    new-instance v1, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$FolderParser;

    invoke-direct {v1, p0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$FolderParser;-><init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)V

    const-string v3, "folder"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    new-instance v1, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$PendingWidgetParser;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$PendingWidgetParser;-><init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$PendingWidgetParser-IA;)V

    const-string v2, "appwidget"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v1, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;

    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$ShortcutParser;-><init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Landroid/content/res/Resources;)V

    const-string v2, "shortcut"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    return-object v0
.end method

.method private gotValidPosition()Z
    .locals 7

    .line 306
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mCurrentFolderId:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 308
    return v1

    .line 313
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mValues:Ljava/util/HashMap;

    const-string v2, "container"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 314
    .local v0, "container":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mValues:Ljava/util/HashMap;

    const-string v3, "position"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 315
    .local v2, "position":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "stage"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 316
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 318
    return v1

    .line 321
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mValues:Ljava/util/HashMap;

    const-string v4, "pane"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 322
    .local v3, "pane":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mValues:Ljava/util/HashMap;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 323
    .local v4, "x":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mValues:Ljava/util/HashMap;

    const-string v6, "y"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 325
    .local v5, "y":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 326
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 327
    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v6, :cond_2

    .line 329
    return v1

    .line 335
    .end local v0    # "container":Ljava/lang/String;
    .end local v2    # "position":Ljava/lang/String;
    .end local v3    # "pane":Ljava/lang/String;
    .end local v4    # "x":Ljava/lang/String;
    .end local v5    # "y":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 336
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private parseAndAddNode(Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    .local p2, "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;>;"
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "include"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x0

    const-string v1, "workspace"

    invoke-interface {p1, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->parseConfigResource(Ljava/lang/String;)V

    .line 275
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 278
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->parseContainerAndScreen(Landroid/content/res/XmlResourceParser;)V

    .line 279
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mCurrentFolderId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 280
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mValues:Ljava/util/HashMap;

    const-string v2, "folder"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mValues:Ljava/util/HashMap;

    .line 283
    const-string v1, "x"

    invoke-static {p1, v1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mColumnCount:I

    invoke-static {v2, v3}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mValues:Ljava/util/HashMap;

    .line 285
    const-string v1, "y"

    invoke-static {p1, v1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mRowCount:I

    invoke-static {v2, v3}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;

    .line 288
    .local v0, "tagParser":Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;
    if-nez v0, :cond_2

    .line 292
    return-void

    .line 295
    :cond_2
    iget-boolean v1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mSupportsPositioning:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->gotValidPosition()Z

    move-result v1

    if-nez v1, :cond_3

    .line 299
    return-void

    .line 302
    :cond_3
    invoke-interface {v0, p1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    .line 303
    return-void
.end method

.method private parseContainerAndScreen(Landroid/content/res/XmlResourceParser;)V
    .locals 4
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 253
    const-string v0, "container"

    invoke-static {p1, v0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hotseat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "pane"

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mValues:Ljava/util/HashMap;

    const-string v3, "stage"

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mValues:Ljava/util/HashMap;

    const-string v1, "rank"

    invoke-static {p1, v1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "position"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mValues:Ljava/util/HashMap;

    const-string v1, "0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mValues:Ljava/util/HashMap;

    const-string v3, "desktop"

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v0, "screen"

    invoke-static {p1, v0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "screen":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 261
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .end local v0    # "screen":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private parseCustomizationXml(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    .locals 1
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-static {p1, p2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->getLayoutElementsMap()Ljava/util/HashMap;

    move-result-object v0

    .line 235
    .local v0, "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;>;"
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->parseCustomizationXmlLevel(Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V

    .line 236
    return-void
.end method

.method private parseCustomizationXmlLevel(Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    .local p2, "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;>;"
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 243
    .local v0, "depth":I
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_2

    :cond_0
    const/4 v1, 0x1

    if-eq v2, v1, :cond_2

    .line 245
    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    .line 246
    goto :goto_0

    .line 248
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->parseAndAddNode(Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V

    goto :goto_0

    .line 250
    :cond_2
    return-void
.end method


# virtual methods
.method public enablePositionRestrictions()V
    .locals 1

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mSupportsPositioning:Z

    .line 150
    return-void
.end method

.method protected generateFolderId()Ljava/lang/String;
    .locals 1

    .line 171
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getConfigXmlResourceId(Ljava/lang/String;)I
    .locals 3
    .param p1, "configResourceName"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mSourceRes:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mAutoInstallConfigApkPackageName:Ljava/lang/String;

    const-string v2, "xml"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse()V
    .locals 0

    .line 178
    invoke-virtual {p0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->parseAppsPackageNamesFromConfigApk()V

    .line 179
    return-void
.end method

.method protected parseAppsPackageNamesFromConfigApk()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 184
    const-string v1, "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

    invoke-static {v1, v0}, Lcom/sonymobile/launcher/customization/ConfigUtil;->getConfigApkPackageName(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mAutoInstallConfigApkPackageName:Ljava/lang/String;

    .line 185
    if-eqz v0, :cond_0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mSourceRes:Landroid/content/res/Resources;

    .line 191
    const-string v0, "default_layout"

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->parseConfigResource(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not finding resources for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mAutoInstallConfigApkPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoInstGPlayCfgPar"

    invoke-static {v2, v1, v0}, Lcom/sonymobile/launcher/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    return-void
.end method

.method protected parseConfigResource(Ljava/lang/String;)V
    .locals 5
    .param p1, "configResourceName"    # Ljava/lang/String;

    .line 207
    const/4 v0, 0x0

    .line 209
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->getConfigXmlResourceId(Ljava/lang/String;)I

    move-result v1

    .line 210
    .local v1, "xmlResID":I
    if-eqz v1, :cond_1

    .line 211
    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v0, v2

    .line 212
    if-eqz v0, :cond_0

    .line 215
    const-string v2, "workspace"

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->parseCustomizationXml(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_0
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Error: Could not get XML resource parser"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;
    .end local p1    # "configResourceName":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v1    # "xmlResID":I
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;
    .restart local p1    # "configResourceName":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 224
    :goto_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 223
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "AutoInstGPlayCfgPar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML parsing failed error for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mAutoInstallConfigApkPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/sonymobile/launcher/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 224
    goto :goto_1

    .line 227
    :cond_2
    :goto_2
    return-void

    .line 223
    :goto_3
    if-eqz v0, :cond_3

    .line 224
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 226
    :cond_3
    throw v1
.end method

.method public setDesktopSize(II)V
    .locals 0
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I

    .line 159
    iput p1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mRowCount:I

    .line 160
    iput p2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->mColumnCount:I

    .line 161
    return-void
.end method
