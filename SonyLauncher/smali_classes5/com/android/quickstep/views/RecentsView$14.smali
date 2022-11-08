.class Lcom/android/quickstep/views/RecentsView$14;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/RecentsView;->enableLayoutTransitions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/views/RecentsView;

    .line 2679
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$14;, "Lcom/android/quickstep/views/RecentsView$14;"
    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$14;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "i"    # I

    .line 2689
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$14;, "Lcom/android/quickstep/views/RecentsView$14;"
    instance-of v0, p3, Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_0

    .line 2690
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$14;->this$0:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->snapToPage(I)Z

    .line 2691
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$14;->this$0:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 2694
    :cond_0
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "i"    # I

    .line 2683
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$14;, "Lcom/android/quickstep/views/RecentsView$14;"
    return-void
.end method
