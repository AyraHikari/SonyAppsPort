.class public final synthetic Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/animation/Animator;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda11;->f$0:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda11;->f$0:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method
