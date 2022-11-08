.class public Lcom/android/launcher3/XperiaCustomizationLoader;
.super Lcom/android/launcher3/DefaultLayoutParser;
.source "XperiaCustomizationLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XperiaCustLoader"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;
    .param p3, "callback"    # Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;
    .param p4, "sourceRes"    # Landroid/content/res/Resources;
    .param p5, "layoutId"    # I

    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected parseLayout(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/launcher3/util/IntArray;)I
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "screenIds"    # Lcom/android/launcher3/util/IntArray;

    .line 49
    new-instance v0, Lcom/sonymobile/launcher/storage/StorageImpl;

    iget-object v1, p0, Lcom/android/launcher3/XperiaCustomizationLoader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/android/launcher3/XperiaCustomizationLoader;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    iget-object v3, p0, Lcom/android/launcher3/XperiaCustomizationLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/launcher/storage/StorageImpl;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/Context;)V

    .line 51
    .local v0, "storage":Lcom/sonymobile/launcher/storage/Storage;
    new-instance v1, Lcom/sonymobile/launcher/customization/DesktopCustomization;

    iget-object v2, p0, Lcom/android/launcher3/XperiaCustomizationLoader;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget-object v4, p0, Lcom/android/launcher3/XperiaCustomizationLoader;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/launcher3/XperiaCustomizationLoader;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/sonymobile/launcher/customization/DesktopCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/launcher/storage/Storage;Lcom/android/launcher3/widget/WidgetManagerHelper;Landroid/appwidget/AppWidgetHost;)V

    .line 54
    .local v1, "desktopCustomization":Lcom/sonymobile/launcher/customization/DesktopCustomization;
    invoke-virtual {v1}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->applyCustomization()Z

    .line 55
    invoke-virtual {v1}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->storeData()V

    .line 57
    new-instance v2, Lcom/sonymobile/launcher/customization/StageCustomization;

    iget-object v3, p0, Lcom/android/launcher3/XperiaCustomizationLoader;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/launcher/customization/StageCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/launcher/storage/Storage;)V

    .line 58
    .local v2, "stageCustomization":Lcom/sonymobile/launcher/customization/StageCustomization;
    invoke-virtual {v2}, Lcom/sonymobile/launcher/customization/StageCustomization;->applyCustomization()Z

    .line 59
    invoke-virtual {v2}, Lcom/sonymobile/launcher/customization/StageCustomization;->storeData()V

    .line 61
    new-instance v3, Lcom/sonymobile/launcher/customization/AppTrayCustomization;

    iget-object v4, p0, Lcom/android/launcher3/XperiaCustomizationLoader;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/sonymobile/launcher/customization/AppTrayCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/launcher/storage/Storage;)V

    .line 62
    .local v3, "appTrayCustomization":Lcom/sonymobile/launcher/customization/AppTrayCustomization;
    invoke-virtual {v3}, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->applyCustomization()Z

    .line 63
    invoke-virtual {v3}, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->storeData()V

    .line 65
    invoke-virtual {v1}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->getNumberOfPages()I

    move-result v4

    if-lez v4, :cond_1

    .line 69
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v1}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->getNumberOfPages()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 70
    invoke-virtual {p2, v4}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 69
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_0
    goto :goto_1

    .line 73
    :cond_1
    const-string v4, "XperiaCustLoader"

    const-string v5, "Error, no pages on desktop"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/XperiaCustomizationLoader;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v4

    .line 78
    .local v4, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    iget v5, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-virtual {v1}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->getColSpan()I

    move-result v6

    if-ne v5, v6, :cond_2

    iget v5, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 79
    invoke-virtual {v1}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->getRowSpan()I

    move-result v6

    if-ne v5, v6, :cond_2

    iget v5, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    .line 80
    invoke-virtual {v2}, Lcom/sonymobile/launcher/customization/StageCustomization;->getSize()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 81
    :cond_2
    new-instance v5, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v5, v4}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iget-object v6, p0, Lcom/android/launcher3/XperiaCustomizationLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/model/DeviceGridState;->writeToPrefs(Landroid/content/Context;)V

    .line 88
    :cond_3
    const/4 v5, 0x0

    return v5
.end method
