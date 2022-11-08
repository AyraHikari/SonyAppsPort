.class public Lcom/android/launcher3/graphics/LauncherPreviewRenderer;
.super Landroid/content/ContextWrapper;
.source "LauncherPreviewRenderer.java"

# interfaces
.implements Lcom/android/launcher3/views/ActivityContext;
.implements Lcom/android/launcher3/WorkspaceLayoutManager;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewLayout;,
        Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHostView;,
        Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;,
        Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;
    }
.end annotation


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private final mDp:Lcom/android/launcher3/DeviceProfile;

.field private final mHomeElementInflater:Landroid/view/LayoutInflater;

.field private final mHotseat:Lcom/android/launcher3/Hotseat;

.field private final mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mInsets:Landroid/graphics/Rect;

.field private final mRootView:Lcom/android/launcher3/InsettableFrameLayout;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWallpaperColorResources:Landroid/util/SparseIntArray;

.field private final mWorkspaceItemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field private final mWorkspaceScreens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/CellLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmUiHandler(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/app/WallpaperColors;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p3, "wallpaperColorsOverride"    # Landroid/app/WallpaperColors;

    .line 185
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 177
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    .line 186
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mUiHandler:Landroid/os/Handler;

    .line 187
    iput-object v1, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mContext:Landroid/content/Context;

    .line 188
    iput-object v2, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 189
    invoke-virtual {v2, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/launcher3/DeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    .line 191
    const-class v5, Landroid/view/WindowManager;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 192
    invoke-interface {v5}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    .line 193
    .local v5, "currentWindowInsets":Landroid/view/WindowInsets;
    new-instance v6, Landroid/graphics/Rect;

    .line 194
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v7

    .line 195
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v8

    .line 196
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v9

    .line 197
    iget-boolean v10, v4, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    move v10, v11

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v10

    :goto_0
    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mInsets:Landroid/graphics/Rect;

    .line 198
    invoke-virtual {v4, v6}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    .line 200
    new-instance v7, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$1;

    iget v8, v2, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iget v9, v2, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-direct {v7, v0, v1, v8, v9}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$1;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;II)V

    .line 202
    .local v7, "iconFactory":Lcom/android/launcher3/icons/BaseIconFactory;
    new-instance v8, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    const/4 v10, -0x1

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v12, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v8, v9, v12}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v8

    .line 207
    .local v8, "iconInfo":Lcom/android/launcher3/icons/BitmapInfo;
    new-instance v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v9}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    iput-object v9, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceItemInfo:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 208
    iput-object v8, v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 209
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    iput-object v10, v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 210
    sget v10, Lcom/android/launcher3/R$string;->label_application:I

    .line 211
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v10, v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 213
    new-instance v9, Landroid/view/ContextThemeWrapper;

    sget v10, Lcom/android/launcher3/R$style;->HomeScreenElementTheme:I

    invoke-direct {v9, v0, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    iput-object v9, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHomeElementInflater:Landroid/view/LayoutInflater;

    .line 215
    invoke-virtual {v9, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 217
    iget-boolean v10, v4, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v10, :cond_1

    sget v10, Lcom/android/launcher3/R$layout;->launcher_preview_two_panel_layout:I

    goto :goto_1

    .line 218
    :cond_1
    sget v10, Lcom/android/launcher3/R$layout;->launcher_preview_layout:I

    :goto_1
    nop

    .line 219
    .local v10, "layoutRes":I
    const/4 v12, 0x0

    invoke-virtual {v9, v10, v12, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/InsettableFrameLayout;

    iput-object v9, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    .line 221
    invoke-virtual {v9, v6}, Lcom/android/launcher3/InsettableFrameLayout;->setInsets(Landroid/graphics/Rect;)V

    .line 222
    iget v6, v4, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v13, v4, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v9, v6, v13}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->measureView(Landroid/view/View;II)V

    .line 224
    sget v6, Lcom/android/launcher3/R$id;->hotseat:I

    invoke-virtual {v9, v6}, Lcom/android/launcher3/InsettableFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/Hotseat;

    iput-object v6, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 225
    invoke-virtual {v6, v11}, Lcom/android/launcher3/Hotseat;->resetLayout(Z)V

    .line 227
    sget v6, Lcom/android/launcher3/R$id;->workspace:I

    invoke-virtual {v9, v6}, Lcom/android/launcher3/InsettableFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout;

    .line 228
    .local v6, "firstScreen":Lcom/android/launcher3/CellLayout;
    iget-object v13, v4, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    iget-object v14, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v14

    iget-object v14, v4, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    iget-object v15, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v15

    .line 230
    iget-boolean v15, v4, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v15, :cond_2

    iget-object v15, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    div-int/lit8 v15, v15, 0x2

    goto :goto_2

    .line 231
    :cond_2
    iget-object v15, v4, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    :goto_2
    iget-object v12, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v15, v12

    iget-object v12, v4, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    iget-object v11, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v11

    .line 228
    invoke-virtual {v6, v13, v14, v15, v12}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    .line 234
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-boolean v11, v4, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    const/4 v12, 0x1

    if-eqz v11, :cond_3

    .line 237
    sget v11, Lcom/android/launcher3/R$id;->workspace_right:I

    invoke-virtual {v9, v11}, Lcom/android/launcher3/InsettableFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/CellLayout;

    .line 238
    .local v9, "rightPanel":Lcom/android/launcher3/CellLayout;
    iget-object v11, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    div-int/lit8 v11, v11, 0x2

    iget-object v13, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v13

    iget-object v13, v4, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    iget-object v14, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    iget-object v14, v4, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    iget-object v15, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v15

    iget-object v15, v4, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    iget-object v4, v4, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v15, v4

    invoke-virtual {v9, v11, v13, v14, v15}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    .line 244
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .end local v9    # "rightPanel":Lcom/android/launcher3/CellLayout;
    :cond_3
    sget-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v3, :cond_6

    .line 248
    if-eqz p3, :cond_4

    .line 249
    move-object/from16 v3, p3

    goto :goto_3

    .line 250
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v3

    :goto_3
    nop

    .line 251
    .local v3, "wallpaperColors":Landroid/app/WallpaperColors;
    if-eqz v3, :cond_5

    .line 252
    nop

    .line 251
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/widget/LocalColorExtractor;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/widget/LocalColorExtractor;

    move-result-object v4

    .line 252
    invoke-virtual {v4, v3}, Lcom/android/launcher3/widget/LocalColorExtractor;->generateColorsOverride(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;

    move-result-object v4

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    iput-object v4, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWallpaperColorResources:Landroid/util/SparseIntArray;

    .line 253
    .end local v3    # "wallpaperColors":Landroid/app/WallpaperColors;
    const/4 v3, 0x0

    goto :goto_5

    .line 254
    :cond_6
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWallpaperColorResources:Landroid/util/SparseIntArray;

    .line 256
    :goto_5
    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->WIDGETS_IN_LAUNCHER_PREVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 257
    new-instance v4, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;

    invoke-direct {v4, v0, v1, v3}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost-IA;)V

    move-object v12, v4

    goto :goto_6

    .line 258
    :cond_7
    move-object v12, v3

    :goto_6
    iput-object v12, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 259
    return-void
.end method

.method private dispatchVisibilityAggregated(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isVisible"    # Z

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 395
    .local v0, "thisVisible":Z
    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_2

    .line 396
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 399
    :cond_2
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 400
    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    move v1, v2

    :cond_3
    move p2, v1

    .line 401
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 402
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 404
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 405
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->dispatchVisibilityAggregated(Landroid/view/View;Z)V

    .line 404
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 408
    .end local v1    # "vg":Landroid/view/ViewGroup;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method private inflateAndAddFolder(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 328
    iget v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    iget v1, p1, Lcom/android/launcher3/model/data/FolderInfo;->screenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    :goto_0
    nop

    .line 331
    .local v0, "screen":Lcom/android/launcher3/CellLayout;
    sget v1, Lcom/android/launcher3/R$layout;->folder_icon:I

    invoke-static {v1, p0, v0, p1}, Lcom/android/launcher3/folder/FolderIcon;->inflateIcon(ILcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    .line 333
    .local v1, "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 334
    return-void
.end method

.method private inflateAndAddIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 320
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    iget v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->screenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 321
    .local v0, "screen":Lcom/android/launcher3/CellLayout;
    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHomeElementInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/launcher3/R$layout;->app_icon:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    .line 323
    .local v1, "icon":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v1, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 324
    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 325
    return-void
.end method

.method private inflateAndAddPredictedIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 385
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    iget v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->screenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 386
    .local v0, "screen":Lcom/android/launcher3/CellLayout;
    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHomeElementInflater:Landroid/view/LayoutInflater;

    invoke-static {v1, v0, p1}, Lcom/android/launcher3/uioverrides/PredictedAppIconInflater;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v1

    .line 387
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 390
    :cond_0
    return-void
.end method

.method private inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/model/WidgetsModel;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p2, "widgetsModel"    # Lcom/android/launcher3/model/WidgetsModel;

    .line 352
    iget-object v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetProviderInfoByProviderName(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object v0

    .line 354
    .local v0, "widgetItem":Lcom/android/launcher3/model/WidgetItem;
    if-nez v0, :cond_0

    .line 355
    return-void

    .line 357
    :cond_0
    iget-object v1, v0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    .line 358
    return-void
.end method

.method private inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p2, "providerInfo"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 363
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->WIDGETS_IN_LAUNCHER_PREVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1, v2, p2}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .local v0, "view":Landroid/appwidget/AppWidgetHostView;
    goto :goto_0

    .line 366
    .end local v0    # "view":Landroid/appwidget/AppWidgetHostView;
    :cond_0
    new-instance v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$3;

    invoke-direct {v0, p0, p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$3;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;)V

    .line 372
    .restart local v0    # "view":Landroid/appwidget/AppWidgetHostView;
    const/4 v1, -0x1

    invoke-virtual {v0, v1, p2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 373
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 376
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWallpaperColorResources:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_1

    .line 377
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setColorResources(Landroid/util/SparseIntArray;)V

    .line 380
    :cond_1
    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 381
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 382
    return-void
.end method

.method private inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Ljava/util/Map;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 339
    .local p2, "widgetProviderInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/ComponentKey;Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez p2, :cond_0

    .line 340
    return-void

    .line 342
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    iget-object v1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 344
    .local v0, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v0, :cond_1

    .line 345
    return-void

    .line 347
    :cond_1
    nop

    .line 348
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 347
    invoke-static {v1, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    .line 349
    return-void
.end method

.method private static measureView(Landroid/view/View;II)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 491
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    .line 492
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 493
    return-void
.end method

.method private populate(Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;)V
    .locals 17
    .param p1, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 413
    .local p2, "widgetProviderInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/ComponentKey;Landroid/appwidget/AppWidgetProviderInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v3, "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v4, "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v5, "currentAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v6, "otherAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    iget-object v7, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher3/util/IntSet;->wrap(Ljava/lang/Iterable;)Lcom/android/launcher3/util/IntSet;

    move-result-object v7

    .line 419
    .local v7, "currentScreenIds":Lcom/android/launcher3/util/IntSet;
    iget-object v8, v1, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-static {v7, v8, v3, v4}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 421
    iget-object v8, v1, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-static {v7, v8, v5, v6}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 423
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    .line 424
    .local v9, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    iget v10, v9, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 431
    :pswitch_1
    move-object v10, v9

    check-cast v10, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v0, v10}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddFolder(Lcom/android/launcher3/model/data/FolderInfo;)V

    .line 432
    goto :goto_1

    .line 428
    :pswitch_2
    move-object v10, v9

    check-cast v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0, v10}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 429
    nop

    .line 436
    .end local v9    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_1
    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    .line 438
    .restart local v9    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    iget v10, v9, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    packed-switch v10, :pswitch_data_1

    goto :goto_3

    .line 441
    :pswitch_3
    if-eqz v2, :cond_1

    .line 442
    move-object v10, v9

    check-cast v10, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {v0, v10, v2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Ljava/util/Map;)V

    goto :goto_3

    .line 445
    :cond_1
    move-object v10, v9

    check-cast v10, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v11, v1, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    invoke-direct {v0, v10, v11}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/model/WidgetsModel;)V

    .line 448
    nop

    .line 452
    .end local v9    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_3
    goto :goto_2

    .line 453
    :cond_2
    iget-object v8, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v8, v8, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-static {v3, v8}, Lcom/android/launcher3/model/ModelUtils;->getMissingHotseatRanks(Ljava/util/List;I)Lcom/android/launcher3/util/IntArray;

    move-result-object v8

    .line 455
    .local v8, "ranks":Lcom/android/launcher3/util/IntArray;
    iget-object v9, v1, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    .line 456
    const/16 v10, -0x67

    invoke-virtual {v9, v10}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    .line 457
    .local v9, "hotseatPredictions":Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;
    if-nez v9, :cond_3

    .line 458
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    goto :goto_4

    :cond_3
    iget-object v11, v9, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    .line 459
    .local v11, "predictions":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :goto_4
    invoke-virtual {v8}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v12

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 460
    .local v12, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    if-ge v13, v12, :cond_4

    .line 461
    invoke-virtual {v8, v13}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v14

    .line 462
    .local v14, "rank":I
    new-instance v15, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 463
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v15, v10}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    move-object v10, v15

    .line 464
    .local v10, "itemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const/16 v15, -0x67

    iput v15, v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->container:I

    .line 465
    iput v14, v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->rank:I

    .line 466
    iget-object v15, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v15, v14}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v15

    iput v15, v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellX:I

    .line 467
    iget-object v15, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v15, v14}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v15

    iput v15, v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellY:I

    .line 468
    iput v14, v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->screenId:I

    .line 469
    invoke-direct {v0, v10}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddPredictedIcon(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 460
    .end local v10    # "itemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v14    # "rank":I
    add-int/lit8 v13, v13, 0x1

    const/16 v10, -0x67

    goto :goto_5

    .line 483
    .end local v13    # "i":I
    :cond_4
    iget-object v10, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    iget-object v13, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v13, v13, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v14, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v14, v14, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v10, v13, v14}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->measureView(Landroid/view/View;II)V

    .line 484
    iget-object v10, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    const/4 v13, 0x1

    invoke-direct {v0, v10, v13}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->dispatchVisibilityAggregated(Landroid/view/View;Z)V

    .line 485
    iget-object v10, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    iget-object v13, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v13, v13, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v14, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v14, v14, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v10, v13, v14}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->measureView(Landroid/view/View;II)V

    .line 487
    iget-object v10, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    iget-object v13, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v13, v13, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v14, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v14, v14, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v10, v13, v14}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->measureView(Landroid/view/View;II)V

    .line 488
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 1

    .line 301
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHotseat()Lcom/android/launcher3/Hotseat;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    return-object v0
.end method

.method public getRenderedView(Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;)Landroid/view/View;
    .locals 1
    .param p1, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 264
    .local p2, "widgetProviderInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/ComponentKey;Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->populate(Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;)V

    .line 265
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    return-object v0
.end method

.method public getScreenWithId(I)Lcom/android/launcher3/CellLayout;
    .locals 2
    .param p1, "screenId"    # I

    .line 316
    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 270
    const-string v0, "TextClock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$2;

    invoke-direct {v0, p0, p3, p4}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$2;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0

    .line 279
    :cond_0
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 280
    return-object v1

    .line 283
    :cond_1
    sget-object v0, Lcom/android/launcher3/R$styleable;->PreviewFragment:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 284
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v2, Lcom/android/launcher3/R$styleable;->PreviewFragment_android_name:I

    .line 285
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-static {p3, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/graphics/FragmentWithPreview;

    .line 286
    .local v2, "f":Lcom/android/launcher3/graphics/FragmentWithPreview;
    invoke-virtual {v2, p3}, Lcom/android/launcher3/graphics/FragmentWithPreview;->enterPreviewMode(Landroid/content/Context;)V

    .line 287
    invoke-virtual {v2, v1}, Lcom/android/launcher3/graphics/FragmentWithPreview;->onInit(Landroid/os/Bundle;)V

    .line 289
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/launcher3/graphics/FragmentWithPreview;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 290
    .local v1, "view":Landroid/view/View;
    sget v3, Lcom/android/launcher3/R$styleable;->PreviewFragment_android_id:I

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 291
    return-object v1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
