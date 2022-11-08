.class Lcom/android/launcher3/settings/PreferenceHighlighter$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PreferenceHighlighter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/settings/PreferenceHighlighter;->removeHighlight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/settings/PreferenceHighlighter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/settings/PreferenceHighlighter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/settings/PreferenceHighlighter;

    .line 128
    iput-object p1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter$3;->this$0:Lcom/android/launcher3/settings/PreferenceHighlighter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter$3;->this$0:Lcom/android/launcher3/settings/PreferenceHighlighter;

    invoke-static {v0}, Lcom/android/launcher3/settings/PreferenceHighlighter;->-$$Nest$fgetmRv(Lcom/android/launcher3/settings/PreferenceHighlighter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter$3;->this$0:Lcom/android/launcher3/settings/PreferenceHighlighter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 132
    return-void
.end method
