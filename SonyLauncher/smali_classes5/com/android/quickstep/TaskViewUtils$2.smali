.class Lcom/android/quickstep/TaskViewUtils$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskViewUtils;->createRecentsWindowAnimator(Lcom/android/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/anim/PendingAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$thumbnails:[Lcom/android/quickstep/views/TaskThumbnailView;


# direct methods
.method constructor <init>([Lcom/android/quickstep/views/TaskThumbnailView;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/android/quickstep/TaskViewUtils$2;->val$thumbnails:[Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 349
    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$2;->val$thumbnails:[Lcom/android/quickstep/views/TaskThumbnailView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 350
    .local v3, "ttv":Lcom/android/quickstep/views/TaskThumbnailView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/TaskThumbnailView;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 349
    .end local v3    # "ttv":Lcom/android/quickstep/views/TaskThumbnailView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    :cond_0
    return-void
.end method
