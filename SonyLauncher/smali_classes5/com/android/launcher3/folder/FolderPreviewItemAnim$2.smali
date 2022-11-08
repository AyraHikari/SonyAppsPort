.class Lcom/android/launcher3/folder/FolderPreviewItemAnim$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderPreviewItemAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/FolderPreviewItemAnim;-><init>(Lcom/android/launcher3/folder/PreviewItemManager;Lcom/android/launcher3/folder/PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field final synthetic val$params:Lcom/android/launcher3/folder/PreviewItemDrawingParams;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderPreviewItemAnim;Ljava/lang/Runnable;Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    .line 81
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$2;->this$0:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$2;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$2;->val$params:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$2;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$2;->val$params:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    .line 88
    return-void
.end method
