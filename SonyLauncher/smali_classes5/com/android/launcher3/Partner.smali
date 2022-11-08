.class public Lcom/android/launcher3/Partner;
.super Ljava/lang/Object;
.source "Partner.java"


# static fields
.field private static final ACTION_PARTNER_CUSTOMIZATION:Ljava/lang/String; = "com.android.launcher3.action.PARTNER_CUSTOMIZATION"

.field public static final RES_DEFAULT_LAYOUT:Ljava/lang/String; = "partner_default_layout"

.field public static final RES_DEFAULT_WALLPAPER_HIDDEN:Ljava/lang/String; = "default_wallpapper_hidden"

.field public static final RES_FOLDER:Ljava/lang/String; = "partner_folder"

.field public static final RES_GRID_ICON_SIZE_DP:Ljava/lang/String; = "grid_icon_size_dp"

.field public static final RES_GRID_NUM_COLUMNS:Ljava/lang/String; = "grid_num_columns"

.field public static final RES_GRID_NUM_ROWS:Ljava/lang/String; = "grid_num_rows"

.field public static final RES_REQUIRE_FIRST_RUN_FLOW:Ljava/lang/String; = "requires_first_run_flow"

.field public static final RES_SYSTEM_WALLPAPER_DIR:Ljava/lang/String; = "system_wallpaper_directory"

.field public static final RES_WALLPAPERS:Ljava/lang/String; = "partner_wallpapers"

.field static final TAG:Ljava/lang/String; = "Launcher.Partner"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/launcher3/Partner;->mPackageName:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/android/launcher3/Partner;->mResources:Landroid/content/res/Resources;

    .line 70
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    const-class v0, Lcom/android/launcher3/Partner;

    monitor-enter v0

    .line 60
    :try_start_0
    const-string v1, "com.android.launcher3.action.PARTNER_CUSTOMIZATION"

    invoke-static {v1, p0}, Lcom/android/launcher3/util/PackageManagerHelper;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object v1

    .line 61
    .local v1, "apkInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/content/res/Resources;>;"
    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/launcher3/Partner;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Resources;

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/Partner;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    .line 59
    .end local v1    # "apkInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/content/res/Resources;>;"
    .end local p0    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public applyInvariantDeviceProfileOverrides(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/util/DisplayMetrics;)V
    .locals 8
    .param p1, "inv"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;

    .line 111
    const-string v0, "integer"

    const/4 v1, -0x1

    .line 112
    .local v1, "numRows":I
    const/4 v2, -0x1

    .line 113
    .local v2, "numColumns":I
    const/high16 v3, -0x40800000    # -1.0f

    .line 116
    .local v3, "iconSize":F
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "grid_num_rows"

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 118
    .local v4, "resId":I
    if-lez v4, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move v1, v5

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "grid_num_columns"

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 122
    invoke-virtual {v5, v6, v0, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 124
    .end local v4    # "resId":I
    .local v0, "resId":I
    if-lez v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move v2, v4

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "grid_icon_size_dp"

    const-string v6, "dimen"

    .line 129
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 128
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    .line 130
    if-lez v0, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 132
    .local v4, "px":I
    int-to-float v5, v4

    iget v6, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v5, v6}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result v5
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    .line 137
    .end local v0    # "resId":I
    .end local v4    # "px":I
    :cond_2
    nop

    .line 139
    if-lez v1, :cond_3

    if-lez v2, :cond_3

    .line 140
    iput v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 141
    iput v2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 144
    :cond_3
    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_4

    .line 145
    iget-object v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 147
    :cond_4
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "Launcher.Partner"

    const-string v5, "Invalid Partner grid resource!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/Partner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/Partner;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getWallpaperDirectory()Ljava/io/File;
    .locals 4

    .line 99
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v2, "system_wallpaper_directory"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, "resId":I
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public hasDefaultLayout()Z
    .locals 4

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 81
    const-string v2, "partner_default_layout"

    const-string v3, "xml"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 83
    .local v0, "defaultLayout":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasFolder()Z
    .locals 4

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "partner_folder"

    const-string v3, "xml"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, "folder":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hideDefaultWallpaper()Z
    .locals 4

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 93
    const-string v2, "default_wallpapper_hidden"

    const-string v3, "bool"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, "resId":I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public requiresFirstRunFlow()Z
    .locals 4

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 105
    const-string v2, "requires_first_run_flow"

    const-string v3, "bool"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 107
    .local v0, "resId":I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
