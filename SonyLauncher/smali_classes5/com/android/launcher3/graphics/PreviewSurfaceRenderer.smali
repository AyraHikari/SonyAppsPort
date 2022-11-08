.class public Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;
.super Ljava/lang/Object;
.source "PreviewSurfaceRenderer.java"


# static fields
.field private static final FADE_IN_ANIMATION_DURATION:I = 0xc8

.field private static final KEY_COLORS:Ljava/lang/String; = "wallpaper_colors"

.field private static final KEY_DISPLAY_ID:Ljava/lang/String; = "display_id"

.field private static final KEY_HOST_TOKEN:Ljava/lang/String; = "host_token"

.field private static final KEY_VIEW_HEIGHT:Ljava/lang/String; = "height"

.field private static final KEY_VIEW_WIDTH:Ljava/lang/String; = "width"

.field private static final TAG:Ljava/lang/String; = "PreviewSurfaceRenderer"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mDisplay:Landroid/view/Display;

.field private final mHeight:I

.field private final mHostToken:Landroid/os/IBinder;

.field private final mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mOnDestroyCallbacks:Lcom/android/launcher3/util/RunnableList;

.field private final mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

.field private final mWallpaperColors:Landroid/app/WallpaperColors;

.field private final mWidth:I


# direct methods
.method public static synthetic $r8$lambda$-2DRbegHmWWUIXYP-MsxQJzexyw(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->loadModelData()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIdp(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnDestroyCallbacks(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)Lcom/android/launcher3/util/RunnableList;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mOnDestroyCallbacks:Lcom/android/launcher3/util/RunnableList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrenderView(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->renderView(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mOnDestroyCallbacks:Lcom/android/launcher3/util/RunnableList;

    .line 84
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDestroyed:Z

    .line 87
    iput-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    .line 89
    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "gridName":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 91
    if-nez v2, :cond_0

    .line 92
    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 94
    :cond_0
    const-string v1, "wallpaper_colors"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperColors;

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWallpaperColors:Landroid/app/WallpaperColors;

    .line 95
    new-instance v1, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v1, p1, v2}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 97
    const-string v1, "host_token"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHostToken:Landroid/os/IBinder;

    .line 98
    const-string v1, "width"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWidth:I

    .line 99
    const-string v1, "height"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHeight:I

    .line 100
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 101
    const-string v3, "display_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDisplay:Landroid/view/Display;

    .line 103
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V

    .line 104
    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 105
    invoke-interface {v1, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControlViewHost;

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    .line 106
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda4;-><init>(Landroid/view/SurfaceControlViewHost;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method private doGridMigrationIfNecessary()Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-static {v0, v1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->needsToMigrate(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-static {v0, v1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->migrateGridIfNeeded(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)Z

    move-result v0

    return v0
.end method

.method private loadModelData()V
    .locals 11

    .line 135
    invoke-direct {p0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->doGridMigrationIfNecessary()Z

    move-result v0

    .line 138
    .local v0, "migrated":Z
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWallpaperColors:Landroid/app/WallpaperColors;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    .line 141
    .local v1, "context":Landroid/content/Context;
    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v2, :cond_0

    .line 142
    const/16 v2, 0x7f6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v1

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/widget/LocalColorExtractor;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/widget/LocalColorExtractor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWallpaperColors:Landroid/app/WallpaperColors;

    .line 146
    invoke-virtual {v2, v1, v3}, Lcom/android/launcher3/widget/LocalColorExtractor;->applyColorsOverride(Landroid/content/Context;Landroid/app/WallpaperColors;)V

    .line 147
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWallpaperColors:Landroid/app/WallpaperColors;

    .line 148
    invoke-virtual {v3}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 149
    .local v1, "inflationContext":Landroid/content/Context;
    goto :goto_0

    .line 150
    .end local v1    # "inflationContext":Landroid/content/Context;
    :cond_1
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    .line 151
    invoke-static {v2}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 154
    .restart local v1    # "inflationContext":Landroid/content/Context;
    :goto_0
    if-eqz v0, :cond_2

    .line 155
    new-instance v9, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v9, v1, v2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 156
    .local v9, "previewContext":Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;
    new-instance v10, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;

    .line 157
    invoke-static {v9}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/android/launcher3/model/BgDataModel;

    invoke-direct {v6}, Lcom/android/launcher3/model/BgDataModel;-><init>()V

    .line 160
    invoke-static {v9}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getModelDelegate()Lcom/android/launcher3/model/ModelDelegate;

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, v10

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V

    .line 182
    invoke-virtual {v10}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->run()V

    .line 183
    .end local v9    # "previewContext":Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;
    goto :goto_1

    .line 184
    :cond_2
    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherModel;->loadAsync(Ljava/util/function/Consumer;)V

    .line 192
    :goto_1
    return-void
.end method

.method private renderView(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;)V
    .locals 6
    .param p1, "inflationContext"    # Landroid/content/Context;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p3, "widgetProviderInfoMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/ComponentKey;Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 206
    return-void

    .line 208
    :cond_0
    new-instance v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWallpaperColors:Landroid/app/WallpaperColors;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/app/WallpaperColors;)V

    .line 209
    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->getRenderedView(Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;)Landroid/view/View;

    move-result-object v0

    .line 211
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWidth:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHeight:I

    int-to-float v2, v2

    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 211
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 213
    .local v1, "scale":F
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 214
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 215
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 216
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 217
    iget v3, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWidth:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 218
    iget v3, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHeight:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 219
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 220
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 221
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    .line 222
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 224
    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;II)V

    .line 225
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDestroyed:Z

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mOnDestroyCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    .line 124
    return-void
.end method

.method public getHostToken()Landroid/os/IBinder;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHostToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$loadModelData$1$com-android-launcher3-graphics-PreviewSurfaceRenderer(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 1
    .param p1, "inflationContext"    # Landroid/content/Context;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;

    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->renderView(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;)V

    return-void
.end method

.method synthetic lambda$loadModelData$2$com-android-launcher3-graphics-PreviewSurfaceRenderer(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 2
    .param p1, "inflationContext"    # Landroid/content/Context;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;

    .line 185
    if-eqz p2, :cond_0

    .line 186
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 188
    :cond_0
    const-string v0, "PreviewSurfaceRenderer"

    const-string v1, "Model loading failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    return-void
.end method

.method synthetic lambda$new$0$com-android-launcher3-graphics-PreviewSurfaceRenderer()Landroid/view/SurfaceControlViewHost;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    new-instance v0, Landroid/view/SurfaceControlViewHost;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHostToken:Landroid/os/IBinder;

    invoke-direct {v0, v1, v2, v3}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public loadAsync()V
    .locals 2

    .line 130
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method
