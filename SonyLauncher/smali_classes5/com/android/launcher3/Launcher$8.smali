.class Lcom/android/launcher3/Launcher$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$viewToFocus:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Launcher;

    .line 2514
    iput-object p1, p0, Lcom/android/launcher3/Launcher$8;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$8;->val$viewToFocus:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2517
    iget-object v0, p0, Lcom/android/launcher3/Launcher$8;->val$viewToFocus:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2518
    return-void
.end method
