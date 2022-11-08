.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private isPosted:Z

.field targetState:I

.field final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private final viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "targetState"    # I

    .line 1899
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>.SettleRunnable;"
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1900
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->viewRef:Ljava/lang/ref/WeakReference;

    .line 1901
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->targetState:I

    .line 1902
    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;

    .line 1891
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->isPosted:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;
    .param p1, "x1"    # Z

    .line 1891
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->isPosted:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1906
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<TV;>.SettleRunnable;"
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    .line 1908
    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1909
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1911
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->targetState:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 1913
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->isPosted:Z

    .line 1914
    return-void
.end method
