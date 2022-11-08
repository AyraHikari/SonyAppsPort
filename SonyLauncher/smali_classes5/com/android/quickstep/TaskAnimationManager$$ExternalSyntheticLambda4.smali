.class public final synthetic Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda4;->f$0:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda4;->f$0:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/quickstep/TaskAnimationManager;->lambda$preloadRecentsAnimation$0(Landroid/content/Intent;)V

    return-void
.end method
