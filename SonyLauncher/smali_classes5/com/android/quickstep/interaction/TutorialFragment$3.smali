.class Lcom/android/quickstep/interaction/TutorialFragment$3;
.super Ljava/lang/Object;
.source "TutorialFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/TutorialFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/TutorialFragment;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/TutorialFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/TutorialFragment;

    .line 321
    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment$3;->this$0:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment$3;->this$0:Lcom/android/quickstep/interaction/TutorialFragment;

    iget-object v1, v0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/TutorialFragment;->changeController(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    .line 325
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment$3;->this$0:Lcom/android/quickstep/interaction/TutorialFragment;

    iget-object v0, v0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/RootSandboxLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 326
    return-void
.end method
