.class Lcom/android/launcher3/settings/PreferenceHighlighter$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PreferenceHighlighter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/settings/PreferenceHighlighter;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
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

    .line 104
    iput-object p1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter$2;->this$0:Lcom/android/launcher3/settings/PreferenceHighlighter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter$2;->this$0:Lcom/android/launcher3/settings/PreferenceHighlighter;

    invoke-static {v0}, Lcom/android/launcher3/settings/PreferenceHighlighter;->-$$Nest$mremoveHighlight(Lcom/android/launcher3/settings/PreferenceHighlighter;)V

    .line 108
    return-void
.end method
