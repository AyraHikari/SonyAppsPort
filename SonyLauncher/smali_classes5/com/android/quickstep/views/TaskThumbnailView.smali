.class public Lcom/android/quickstep/views/TaskThumbnailView;
.super Landroid/view/View;
.source "TaskThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;
    }
.end annotation


# static fields
.field public static final DIM_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/quickstep/views/TaskThumbnailView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEMP_PARAMS:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivity:Lcom/android/launcher3/BaseActivity;

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field protected mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mClearPaint:Landroid/graphics/Paint;

.field private mDimAlpha:F

.field private final mDimColor:I

.field private final mDimmingPaintAfterClearing:Landroid/graphics/Paint;

.field private mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

.field private mOverlay:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

.field private mOverlayEnabled:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPreviewPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

.field private final mPreviewRect:Landroid/graphics/Rect;

.field private mTask:Lcom/android/systemui/shared/recents/model/Task;

.field private mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDimAlpha(Lcom/android/quickstep/views/TaskThumbnailView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/quickstep/views/TaskThumbnailView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/quickstep/views/TaskThumbnailView$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/quickstep/views/TaskThumbnailView;->TEMP_PARAMS:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 67
    new-instance v0, Lcom/android/quickstep/views/TaskThumbnailView$1;

    const-string v1, "dimAlpha"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskThumbnailView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskThumbnailView;->DIM_ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/TaskThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/TaskThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    .line 84
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 85
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mClearPaint:Landroid/graphics/Paint;

    .line 86
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimmingPaintAfterClearing:Landroid/graphics/Paint;

    .line 90
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewRect:Landroid/graphics/Rect;

    .line 91
    new-instance v5, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-direct {v5}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;-><init>()V

    iput-object v5, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    .line 102
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    .line 116
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 117
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 119
    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mActivity:Lcom/android/launcher3/BaseActivity;

    .line 121
    sget-object v0, Lcom/android/quickstep/views/TaskThumbnailView;->TEMP_PARAMS:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iput-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    .line 123
    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->getForegroundScrimDimColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimColor:I

    .line 124
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    return-void
.end method

.method private getColorFilter(F)Landroid/graphics/ColorFilter;
    .locals 1
    .param p1, "dimAmount"    # F

    .line 383
    iget v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimColor:I

    invoke-static {v0, p1}, Lcom/android/launcher3/Utilities;->makeColorTintingColorFilter(IF)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method private refresh(Z)V
    .locals 4
    .param p1, "shouldRefreshOverlay"    # Z

    .line 174
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 176
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 177
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 178
    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 179
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->updateThumbnailMatrix()V

    .line 180
    if-eqz p1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->refreshOverlay()V

    .line 183
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 185
    iput-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 186
    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 187
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->reset()V

    .line 189
    :goto_0
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->updateThumbnailPaintFilter()V

    .line 190
    return-void
.end method

.method private refreshOverlay()V
    .locals 5

    .line 333
    iget-boolean v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mOverlayEnabled:Z

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {v3}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->-$$Nest$fgetmMatrix(Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {v4}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->-$$Nest$fgetmIsOrientationChanged(Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->initOverlay(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/Matrix;Z)V

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->reset()V

    .line 339
    :goto_0
    return-void
.end method

.method private updateThumbnailMatrix()V
    .locals 10

    .line 356
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->-$$Nest$fputmIsOrientationChanged(Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;Z)V

    .line 357
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_1

    .line 358
    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewRect:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 359
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 358
    invoke-virtual {v2, v1, v1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 360
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v0

    .line 362
    .local v0, "currentRotation":I
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v9, v3

    goto :goto_0

    :cond_0
    move v9, v1

    .line 363
    .local v9, "isRtl":Z
    :goto_0
    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    iget-object v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 364
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getMeasuredHeight()I

    move-result v6

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    .line 363
    move v8, v0

    invoke-virtual/range {v2 .. v9}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->updateThumbnailMatrix(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/launcher3/DeviceProfile;IZ)V

    .line 367
    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {v2}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->-$$Nest$fgetmMatrix(Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 368
    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 370
    .end local v0    # "currentRotation":I
    .end local v9    # "isRtl":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->updateCurrentFullscreenParams(Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->invalidate()V

    .line 372
    return-void
.end method

.method private updateThumbnailPaintFilter()V
    .locals 6

    .line 342
    iget v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 343
    .local v0, "filter":Landroid/graphics/ColorFilter;
    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 344
    iget v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 345
    .local v1, "alpha":I
    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimmingPaintAfterClearing:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 346
    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 349
    :cond_0
    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 350
    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    iget v4, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimColor:I

    int-to-float v5, v1

    invoke-static {v3, v4, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->invalidate()V

    .line 353
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 132
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->reset()V

    .line 133
    iput-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 134
    const/high16 v0, -0x1000000

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    or-int/2addr v0, v1

    .line 135
    .local v0, "color":I
    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    return-void
.end method

.method public drawOnCanvas(Landroid/graphics/Canvas;FFFFF)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "cornerRadius"    # F

    .line 292
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->showScreenshot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v8, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mClearPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p6

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 295
    iget-object v7, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimmingPaintAfterClearing:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 297
    return-void

    .line 304
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    add-float v3, p3, v0

    sub-float v5, p5, v0

    iget-object v8, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v6, p6

    move v7, p6

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 307
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 309
    .local v0, "drawBackgroundOnly":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 310
    return-void

    .line 313
    :cond_3
    iget-object v8, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p6

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 314
    return-void
.end method

.method public getDimAlpha()F
    .locals 1

    .line 212
    iget v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    return v0
.end method

.method public getPreviewPositionHelper()Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    return-object v0
.end method

.method public getScaledInsets()Landroid/graphics/Insets;
    .locals 10

    .line 222
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v0, :cond_0

    .line 223
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0

    .line 226
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 228
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 229
    .local v0, "bitmapRect":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v3, v3, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 234
    .local v1, "viewRect":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 235
    .local v2, "boundsToBitmapSpace":Landroid/graphics/Matrix;
    iget-object v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 236
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 237
    .local v3, "boundsInBitmapSpace":Landroid/graphics/RectF;
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 239
    iget-object v4, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    .line 240
    .local v4, "dp":Lcom/android/launcher3/DeviceProfile;
    invoke-static {v4}, Lcom/android/quickstep/views/TaskView;->clipLeft(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    iget v5, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v6

    .line 241
    .local v5, "leftInset":I
    :goto_0
    invoke-static {v4}, Lcom/android/quickstep/views/TaskView;->clipTop(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto :goto_1

    :cond_2
    move v7, v6

    .line 242
    .local v7, "topInset":I
    :goto_1
    invoke-static {v4}, Lcom/android/quickstep/views/TaskView;->clipRight(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, v0, Landroid/graphics/RectF;->right:F

    iget v9, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    goto :goto_2

    .line 243
    :cond_3
    move v8, v6

    :goto_2
    nop

    .line 244
    .local v8, "rightInset":I
    invoke-static {v4}, Lcom/android/quickstep/views/TaskView;->clipBottom(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 245
    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget v9, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    goto :goto_3

    :cond_4
    nop

    .line 246
    .local v6, "bottomInset":I
    :goto_3
    invoke-static {v5, v7, v8, v6}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v9

    return-object v9
.end method

.method public getSysUiStatusNavFlags()I
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_2

    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "flags":I
    iget v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->appearance:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 254
    const/4 v2, 0x4

    goto :goto_0

    .line 255
    :cond_0
    nop

    :goto_0
    or-int v0, v1, v2

    .line 256
    .end local v1    # "flags":I
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->appearance:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 257
    const/4 v1, 0x1

    goto :goto_1

    .line 258
    :cond_1
    const/4 v1, 0x2

    :goto_1
    or-int/2addr v0, v1

    .line 259
    return v0

    .line 261
    .end local v0    # "flags":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mOverlay:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getTaskOverlayFactory()Lcom/android/quickstep/TaskOverlayFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/TaskOverlayFactory;->createOverlay(Lcom/android/quickstep/views/TaskThumbnailView;)Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mOverlay:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mOverlay:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    return-object v0
.end method

.method public getTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x0

    return-object v0

    .line 394
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isRealSnapshot()Z
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 403
    return v1

    .line 405
    :cond_0
    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isRealSnapshot:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 266
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v0, v0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    .line 267
    .local v0, "currentDrawnInsets":Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 268
    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget v1, v1, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mScale:F

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget v2, v2, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mScale:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 269
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 271
    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v4, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    neg-float v5, v1

    .line 274
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    .line 275
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    add-float v7, v1, v2

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget v8, v1, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    .line 271
    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/quickstep/views/TaskThumbnailView;->drawOnCanvas(Landroid/graphics/Canvas;FFFFF)V

    .line 277
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 278
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 376
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 377
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->updateThumbnailMatrix()V

    .line 379
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->refreshOverlay()V

    .line 380
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh(Z)V

    .line 167
    return-void
.end method

.method public setDimAlpha(F)V
    .locals 0
    .param p1, "dimAlpha"    # F

    .line 200
    iput p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimAlpha:F

    .line 201
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->updateThumbnailPaintFilter()V

    .line 202
    return-void
.end method

.method public setFullscreenParams(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)V
    .locals 1
    .param p1, "fullscreenParams"    # Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    .line 285
    iput-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    .line 286
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->setFullscreenParams(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->invalidate()V

    .line 288
    return-void
.end method

.method public setOverlayEnabled(Z)V
    .locals 1
    .param p1, "overlayEnabled"    # Z

    .line 321
    iget-boolean v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mOverlayEnabled:Z

    if-eq v0, p1, :cond_0

    .line 322
    iput-boolean p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mOverlayEnabled:Z

    .line 324
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->refreshOverlay()V

    .line 326
    :cond_0
    return-void
.end method

.method public setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 1
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "thumbnailData"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Z)V

    .line 162
    return-void
.end method

.method public setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Z)V
    .locals 4
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "thumbnailData"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .param p3, "refreshNow"    # Z

    .line 150
    iput-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 151
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 152
    .local v0, "thumbnailWasNull":Z
    :goto_0
    nop

    .line 153
    if-eqz p2, :cond_1

    iget-object v3, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    move-object v3, p2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-object v3, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 154
    if-eqz p3, :cond_3

    .line 155
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh(Z)V

    .line 157
    :cond_3
    return-void
.end method
