.class Lcom/android/launcher3/views/AbstractSlideInView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractSlideInView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/views/AbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/views/AbstractSlideInView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/views/AbstractSlideInView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/views/AbstractSlideInView;

    .line 93
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView$2;, "Lcom/android/launcher3/views/AbstractSlideInView$2;"
    iput-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView$2;->this$0:Lcom/android/launcher3/views/AbstractSlideInView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 96
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView$2;, "Lcom/android/launcher3/views/AbstractSlideInView$2;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView$2;->this$0:Lcom/android/launcher3/views/AbstractSlideInView;

    iget-object v0, v0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->finishedScrolling()V

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView$2;->this$0:Lcom/android/launcher3/views/AbstractSlideInView;

    invoke-static {v0}, Lcom/android/launcher3/views/AbstractSlideInView;->access$000(Lcom/android/launcher3/views/AbstractSlideInView;)V

    .line 98
    return-void
.end method
