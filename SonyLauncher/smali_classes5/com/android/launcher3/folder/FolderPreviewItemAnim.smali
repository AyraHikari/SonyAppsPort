.class Lcom/android/launcher3/folder/FolderPreviewItemAnim;
.super Ljava/lang/Object;
.source "FolderPreviewItemAnim.java"


# static fields
.field private static final PARAMS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/folder/FolderPreviewItemAnim;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final sTempParamsArray:[F

.field private static final sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;


# instance fields
.field public final finalState:[F

.field private final mAnimator:Landroid/animation/ObjectAnimator;

.field private final mItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

.field private final mParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;


# direct methods
.method static bridge synthetic -$$Nest$fgetmParams(Lcom/android/launcher3/folder/FolderPreviewItemAnim;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetParams(Lcom/android/launcher3/folder/FolderPreviewItemAnim;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->setParams([F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsTempParamsArray()[F
    .locals 1

    sget-object v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTempParamsArray:[F

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;

    const-class v1, [F

    const-string v2, "params"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->PARAMS:Landroid/util/Property;

    .line 47
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    sput-object v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTempParamsArray:[F

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/folder/PreviewItemManager;Lcom/android/launcher3/folder/PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V
    .locals 7
    .param p1, "itemManager"    # Lcom/android/launcher3/folder/PreviewItemManager;
    .param p2, "params"    # Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .param p3, "index0"    # I
    .param p4, "items0"    # I
    .param p5, "index1"    # I
    .param p6, "items1"    # I
    .param p7, "duration"    # I
    .param p8, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    .line 70
    iput-object p2, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 71
    int-to-float v0, p5

    iput v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->index:F

    .line 73
    sget-object v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {p1, p5, p6, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 74
    const/4 v1, 0x3

    new-array v2, v1, [F

    iget v3, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    const/4 v5, 0x1

    aput v3, v2, v5

    iget v3, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    const/4 v6, 0x2

    aput v3, v2, v6

    iput-object v2, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalState:[F

    .line 76
    invoke-virtual {p1, p3, p4, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 77
    new-array v1, v1, [F

    iget v3, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    aput v3, v1, v4

    iget v3, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    aput v3, v1, v5

    iget v0, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    aput v0, v1, v6

    move-object v0, v1

    .line 79
    .local v0, "startState":[F
    sget-object v1, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->PARAMS:Landroid/util/Property;

    new-instance v3, Landroid/animation/FloatArrayEvaluator;

    invoke-direct {v3}, Landroid/animation/FloatArrayEvaluator;-><init>()V

    new-array v6, v6, [[F

    aput-object v0, v6, v4

    aput-object v2, v6, v5

    invoke-static {p0, v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 81
    new-instance v2, Lcom/android/launcher3/folder/FolderPreviewItemAnim$2;

    invoke-direct {v2, p0, p8, p2}, Lcom/android/launcher3/folder/FolderPreviewItemAnim$2;-><init>(Lcom/android/launcher3/folder/FolderPreviewItemAnim;Ljava/lang/Runnable;Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 90
    int-to-long v2, p7

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 91
    return-void
.end method

.method private setParams([F)V
    .locals 2
    .param p1, "values"    # [F

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v1, 0x0

    aget v1, p1, v1

    iput v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v1, 0x1

    aget v1, p1, v1

    iput v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v1, 0x2

    aget v1, p1, v1

    iput v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->onParamsChanged()V

    .line 98
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 106
    return-void
.end method

.method public hasEqualFinalState(Lcom/android/launcher3/folder/FolderPreviewItemAnim;)Z
    .locals 2
    .param p1, "anim"    # Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalState:[F

    iget-object v1, p1, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalState:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 102
    return-void
.end method
