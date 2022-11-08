.class Lcom/android/launcher3/notification/NotificationContainer$2;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "NotificationContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/notification/NotificationContainer;->onDragEnd(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/notification/NotificationContainer;

.field final synthetic val$current:Lcom/android/launcher3/notification/NotificationMainView;

.field final synthetic val$willExit:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/notification/NotificationContainer;ZLcom/android/launcher3/notification/NotificationMainView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/notification/NotificationContainer;

    .line 253
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationContainer$2;->this$0:Lcom/android/launcher3/notification/NotificationContainer;

    iput-boolean p2, p0, Lcom/android/launcher3/notification/NotificationContainer$2;->val$willExit:Z

    iput-object p3, p0, Lcom/android/launcher3/notification/NotificationContainer$2;->val$current:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer$2;->this$0:Lcom/android/launcher3/notification/NotificationContainer;

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationContainer;->-$$Nest$fgetmSwipeDetector(Lcom/android/launcher3/notification/NotificationContainer;)Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->finishedScrolling()V

    .line 257
    iget-boolean v0, p0, Lcom/android/launcher3/notification/NotificationContainer$2;->val$willExit:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer$2;->val$current:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationMainView;->onChildDismissed()V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationContainer$2;->this$0:Lcom/android/launcher3/notification/NotificationContainer;

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationContainer;->-$$Nest$fgetmPopupContainer(Lcom/android/launcher3/notification/NotificationContainer;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showArrow(Z)V

    .line 261
    return-void
.end method
