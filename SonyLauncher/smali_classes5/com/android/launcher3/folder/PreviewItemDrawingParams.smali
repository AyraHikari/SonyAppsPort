.class Lcom/android/launcher3/folder/PreviewItemDrawingParams;
.super Ljava/lang/Object;
.source "PreviewItemDrawingParams.java"


# instance fields
.field public anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

.field public drawable:Landroid/graphics/drawable/Drawable;

.field public hidden:Z

.field index:F

.field public item:Lcom/android/launcher3/model/data/ItemInfo;

.field scale:F

.field transX:F

.field transY:F


# direct methods
.method constructor <init>(FFF)V
    .locals 0
    .param p1, "transX"    # F
    .param p2, "transY"    # F
    .param p3, "scale"    # F

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    .line 41
    iput p2, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    .line 42
    iput p3, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    .line 43
    return-void
.end method


# virtual methods
.method public update(FFF)V
    .locals 2
    .param p1, "transX"    # F
    .param p2, "transY"    # F
    .param p3, "scale"    # F

    .line 48
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalState:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalState:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalState:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->cancel()V

    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    .line 57
    iput p2, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    .line 58
    iput p3, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    .line 59
    return-void
.end method
