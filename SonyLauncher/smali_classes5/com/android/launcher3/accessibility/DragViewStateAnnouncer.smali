.class public Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;
.super Ljava/lang/Object;
.source "DragViewStateAnnouncer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private final mTargetView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->mTargetView:Landroid/view/View;

    .line 38
    return-void
.end method

.method public static createFor(Landroid/view/View;)Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    invoke-direct {v0, p0}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public announce(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .line 41
    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->mTargetView:Landroid/view/View;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method

.method public completeAction(I)V
    .locals 3
    .param p1, "announceResId"    # I

    .line 56
    invoke-virtual {p0}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->cancel()V

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 58
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public run()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->mTargetView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 53
    return-void
.end method
