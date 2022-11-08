.class public Lcom/android/launcher3/AutoInstallsLayout;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;,
        Lcom/android/launcher3/AutoInstallsLayout$FolderParser;,
        Lcom/android/launcher3/AutoInstallsLayout$SearchWidgetParser;,
        Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;,
        Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;,
        Lcom/android/launcher3/AutoInstallsLayout$AutoInstallParser;,
        Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;,
        Lcom/android/launcher3/AutoInstallsLayout$TagParser;
    }
.end annotation


# static fields
.field static final ACTION_LAUNCHER_CUSTOMIZATION:Ljava/lang/String; = "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

.field private static final ATTR_CLASS_NAME:Ljava/lang/String; = "className"

.field private static final ATTR_CONTAINER:Ljava/lang/String; = "container"

.field private static final ATTR_ICON:Ljava/lang/String; = "icon"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_RANK:Ljava/lang/String; = "rank"

.field private static final ATTR_SCREEN:Ljava/lang/String; = "screen"

.field private static final ATTR_SPAN_X:Ljava/lang/String; = "spanX"

.field private static final ATTR_SPAN_Y:Ljava/lang/String; = "spanY"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_TITLE_TEXT:Ljava/lang/String; = "titleText"

.field private static final ATTR_URL:Ljava/lang/String; = "url"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final ATTR_WORKSPACE:Ljava/lang/String; = "workspace"

.field private static final ATTR_X:Ljava/lang/String; = "x"

.field private static final ATTR_Y:Ljava/lang/String; = "y"

.field private static final FORMATTED_LAYOUT_RES:Ljava/lang/String; = "default_layout_%dx%d"

.field private static final FORMATTED_LAYOUT_RES_WITH_HOSTEAT:Ljava/lang/String; = "default_layout_%dx%d_h%s"

.field private static final HOTSEAT_CONTAINER_NAME:Ljava/lang/String;

.field private static final LAYOUT_RES:Ljava/lang/String; = "default_layout"

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "AutoInstalls"

.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_APP_ICON:Ljava/lang/String; = "appicon"

.field private static final TAG_AUTO_INSTALL:Ljava/lang/String; = "autoinstall"

.field private static final TAG_EXTRA:Ljava/lang/String; = "extra"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field protected static final TAG_SEARCH_WIDGET:Ljava/lang/String; = "searchwidget"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field public static final TAG_WORKSPACE:Ljava/lang/String; = "workspace"


# instance fields
.field final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field protected final mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

.field private final mColumnCount:I

.field final mContext:Landroid/content/Context;

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

.field protected final mInitialLayoutSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPackageManager:Landroid/content/pm/PackageManager;

.field protected final mRootTag:Ljava/lang/String;

.field private final mRowCount:I

.field protected final mSourceRes:Landroid/content/res/Resources;

.field private final mTemp:[I

.field final mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    nop

    .line 154
    const/16 v0, -0x65

    invoke-static {v0}, Lcom/android/launcher3/LauncherSettings$Favorites;->containerToString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/AutoInstallsLayout;->HOTSEAT_CONTAINER_NAME:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;
    .param p3, "callback"    # Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "layoutId"    # I
    .param p6, "rootTag"    # Ljava/lang/String;

    .line 180
    new-instance v5, Lcom/android/launcher3/AutoInstallsLayout$$ExternalSyntheticLambda0;

    invoke-direct {v5, p4, p5}, Lcom/android/launcher3/AutoInstallsLayout$$ExternalSyntheticLambda0;-><init>(Landroid/content/res/Resources;I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/AutoInstallsLayout;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;Ljava/util/function/Supplier;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;Ljava/util/function/Supplier;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;
    .param p3, "callback"    # Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p6, "rootTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetHost;",
            "Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;",
            "Landroid/content/res/Resources;",
            "Ljava/util/function/Supplier<",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 185
    .local p5, "initialLayoutSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lorg/xmlpull/v1/XmlPullParser;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mTemp:[I

    .line 186
    iput-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mContext:Landroid/content/Context;

    .line 187
    iput-object p2, p0, Lcom/android/launcher3/AutoInstallsLayout;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 188
    iput-object p3, p0, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 191
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    .line 192
    iput-object p6, p0, Lcom/android/launcher3/AutoInstallsLayout;->mRootTag:Ljava/lang/String;

    .line 194
    iput-object p4, p0, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    .line 195
    iput-object p5, p0, Lcom/android/launcher3/AutoInstallsLayout;->mInitialLayoutSupplier:Ljava/util/function/Supplier;

    .line 197
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 198
    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput v1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mRowCount:I

    .line 199
    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mColumnCount:I

    .line 200
    return-void
.end method

.method public static beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    .line 663
    goto :goto_0

    .line 665
    :cond_0
    if-ne v1, v2, :cond_2

    .line 669
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    return-void

    .line 670
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    .line 666
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

    .line 676
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 678
    .local v0, "x":I
    if-gez v0, :cond_0

    .line 679
    add-int v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 682
    .end local v0    # "x":I
    :cond_0
    return-object p0
.end method

.method static copyInteger(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .param p0, "from"    # Landroid/content/ContentValues;
    .param p1, "to"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;

    .line 722
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 723
    return-void
.end method

.method static get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher3/AutoInstallsLayout;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;
    .param p2, "callback"    # Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    .line 79
    nop

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 79
    const-string v1, "android.autoinstalls.config.action.PLAY_AUTO_INSTALL"

    invoke-static {v1, v0}, Lcom/android/launcher3/util/PackageManagerHelper;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object v0

    .line 81
    .local v0, "customizationApkInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/content/res/Resources;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 82
    return-object v1

    .line 84
    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 85
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/res/Resources;

    .line 86
    .local v3, "targetRes":Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v11

    .line 89
    .local v11, "grid":Lcom/android/launcher3/InvariantDeviceProfile;
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v11, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 90
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget v6, v11, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    iget v6, v11, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v5, v9

    .line 89
    const-string v6, "default_layout_%dx%d_h%s"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "layoutName":Ljava/lang/String;
    const-string v5, "xml"

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 94
    .local v6, "layoutId":I
    const-string v10, "Formatted layout: "

    const-string v12, "AutoInstalls"

    if-nez v6, :cond_1

    .line 95
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " not found. Trying layout without hosteat"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    iget v14, v11, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 98
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v7

    iget v7, v11, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v8

    .line 97
    const-string v7, "default_layout_%dx%d"

    invoke-static {v13, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v3, v4, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object v13, v4

    goto :goto_0

    .line 94
    :cond_1
    move-object v13, v4

    .line 103
    .end local v4    # "layoutName":Ljava/lang/String;
    .local v13, "layoutName":Ljava/lang/String;
    :goto_0
    if-nez v6, :cond_2

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " not found. Trying the default layout"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v4, "default_layout"

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move v14, v6

    goto :goto_1

    .line 103
    :cond_2
    move v14, v6

    .line 108
    .end local v6    # "layoutId":I
    .local v14, "layoutId":I
    :goto_1
    if-nez v14, :cond_3

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Layout definition not found in package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-object v1

    .line 112
    :cond_3
    new-instance v1, Lcom/android/launcher3/AutoInstallsLayout;

    const-string v10, "workspace"

    move-object v4, v1

    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v8, v3

    move v9, v14

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/AutoInstallsLayout;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    return-object v1
.end method

.method protected static getAttributeResourceValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 704
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 705
    .local v0, "attrs":Landroid/util/AttributeSet;
    const-string v1, "http://schemas.android.com/apk/res-auto/com.android.launcher3"

    invoke-interface {v0, v1, p1, p2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 708
    .local v1, "value":I
    if-ne v1, p2, :cond_0

    .line 709
    const/4 v2, 0x0

    invoke-interface {v0, v2, p1, p2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 711
    :cond_0
    return v1
.end method

.method protected static getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 690
    const-string v0, "http://schemas.android.com/apk/res-auto/com.android.launcher3"

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 693
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$new$0(Landroid/content/res/Resources;I)Lorg/xmlpull/v1/XmlPullParser;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "layoutId"    # I

    .line 180
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addShortcut(Ljava/lang/String;Landroid/content/Intent;I)I
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "type"    # I

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    invoke-interface {v0}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()I

    move-result v0

    .line 300
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "itemType"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "spanX"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "spanY"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v1

    if-gez v1, :cond_0

    .line 307
    const/4 v1, -0x1

    return v1

    .line 309
    :cond_0
    return v0
.end method

.method protected getFolderElementsMap()Landroid/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    .line 314
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 315
    .local v0, "parsers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/launcher3/AutoInstallsLayout$TagParser;>;"
    new-instance v1, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;

    invoke-direct {v1, p0}, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    const-string v2, "appicon"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    new-instance v1, Lcom/android/launcher3/AutoInstallsLayout$AutoInstallParser;

    invoke-direct {v1, p0}, Lcom/android/launcher3/AutoInstallsLayout$AutoInstallParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    const-string v2, "autoinstall"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-instance v1, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;

    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;Landroid/content/res/Resources;)V

    const-string v2, "shortcut"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    return-object v0
.end method

.method protected getLayoutElementsMap()Landroid/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    .line 322
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 323
    .local v0, "parsers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/launcher3/AutoInstallsLayout$TagParser;>;"
    new-instance v1, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;

    invoke-direct {v1, p0}, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    const-string v2, "appicon"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance v1, Lcom/android/launcher3/AutoInstallsLayout$AutoInstallParser;

    invoke-direct {v1, p0}, Lcom/android/launcher3/AutoInstallsLayout$AutoInstallParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    const-string v2, "autoinstall"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    new-instance v1, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;

    invoke-direct {v1, p0}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    const-string v2, "folder"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance v1, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;

    invoke-direct {v1, p0}, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    const-string v2, "appwidget"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    new-instance v1, Lcom/android/launcher3/AutoInstallsLayout$SearchWidgetParser;

    invoke-direct {v1, p0}, Lcom/android/launcher3/AutoInstallsLayout$SearchWidgetParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    const-string v2, "searchwidget"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    new-instance v1, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;

    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;Landroid/content/res/Resources;)V

    const-string v2, "shortcut"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    return-object v0
.end method

.method public loadLayout(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/util/IntArray;)I
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "screenIds"    # Lcom/android/launcher3/util/IntArray;

    .line 206
    iput-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mInitialLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/AutoInstallsLayout;->parseLayout(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/launcher3/util/IntArray;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AutoInstalls"

    const-string v2, "Error parsing layout: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    const/4 v1, -0x1

    return v1
.end method

.method protected parseAndAddNode(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Lcom/android/launcher3/util/IntArray;)I
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "screenIds"    # Lcom/android/launcher3/util/IntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/AutoInstallsLayout$TagParser;",
            ">;",
            "Lcom/android/launcher3/util/IntArray;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    .local p2, "tagParserMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/launcher3/AutoInstallsLayout$TagParser;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "include"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 259
    const-string v0, "workspace"

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeResourceValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 260
    .local v0, "resId":I
    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/android/launcher3/AutoInstallsLayout;->parseLayout(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/launcher3/util/IntArray;)I

    move-result v1

    return v1

    .line 264
    :cond_0
    return v1

    .line 268
    .end local v0    # "resId":I
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mTemp:[I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->parseContainerAndScreen(Lorg/xmlpull/v1/XmlPullParser;[I)V

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mTemp:[I

    aget v2, v0, v1

    .line 271
    .local v2, "container":I
    const/4 v3, 0x1

    aget v0, v0, v3

    .line 273
    .local v0, "screenId":I
    iget-object v4, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "container"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    iget-object v4, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "screen"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    iget-object v4, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    .line 277
    const-string v5, "x"

    invoke-static {p1, v5}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher3/AutoInstallsLayout;->mColumnCount:I

    invoke-static {v5, v6}, Lcom/android/launcher3/AutoInstallsLayout;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 276
    const-string v6, "cellX"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v4, p0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    .line 279
    const-string v5, "y"

    invoke-static {p1, v5}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher3/AutoInstallsLayout;->mRowCount:I

    invoke-static {v5, v6}, Lcom/android/launcher3/AutoInstallsLayout;->convertToDistanceFromEnd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 278
    const-string v6, "cellY"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/AutoInstallsLayout$TagParser;

    .line 282
    .local v4, "tagParser":Lcom/android/launcher3/AutoInstallsLayout$TagParser;
    if-nez v4, :cond_2

    .line 284
    return v1

    .line 286
    :cond_2
    invoke-interface {v4, p1}, Lcom/android/launcher3/AutoInstallsLayout$TagParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v5

    .line 287
    .local v5, "newElementId":I
    if-ltz v5, :cond_4

    .line 289
    invoke-virtual {p3, v0}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, -0x64

    if-ne v2, v1, :cond_3

    .line 291
    invoke-virtual {p3, v0}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 293
    :cond_3
    return v3

    .line 295
    :cond_4
    return v1
.end method

.method protected parseContainerAndScreen(Lorg/xmlpull/v1/XmlPullParser;[I)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "out"    # [I

    .line 241
    sget-object v0, Lcom/android/launcher3/AutoInstallsLayout;->HOTSEAT_CONTAINER_NAME:Ljava/lang/String;

    const-string v1, "container"

    invoke-static {p1, v1}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 242
    const/16 v0, -0x65

    aput v0, p2, v2

    .line 244
    const-string v0, "rank"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, p2, v1

    goto :goto_0

    .line 246
    :cond_0
    const/16 v0, -0x64

    aput v0, p2, v2

    .line 247
    const-string v0, "screen"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, p2, v1

    .line 249
    :goto_0
    return-void
.end method

.method protected parseLayout(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/launcher3/util/IntArray;)I
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "screenIds"    # Lcom/android/launcher3/util/IntArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mRootTag:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 221
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 223
    .local v0, "depth":I
    invoke-virtual {p0}, Lcom/android/launcher3/AutoInstallsLayout;->getLayoutElementsMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 224
    .local v1, "tagParserMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/launcher3/AutoInstallsLayout$TagParser;>;"
    const/4 v2, 0x0

    .line 226
    .local v2, "count":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 227
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2

    :cond_0
    const/4 v3, 0x1

    if-eq v4, v3, :cond_2

    .line 228
    const/4 v3, 0x2

    if-eq v4, v3, :cond_1

    .line 229
    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/launcher3/AutoInstallsLayout;->parseAndAddNode(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;Lcom/android/launcher3/util/IntArray;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 233
    :cond_2
    return v2
.end method
