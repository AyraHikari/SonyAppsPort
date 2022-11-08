.class public final synthetic Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/TaskAnimationManager;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TaskAnimationManager;Landroid/content/Intent;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/quickstep/TaskAnimationManager;

    iput-object p2, p0, Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    iput-wide p3, p0, Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda3;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/quickstep/TaskAnimationManager;

    iget-object v1, p0, Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    iget-wide v2, p0, Lcom/android/quickstep/TaskAnimationManager$$ExternalSyntheticLambda3;->f$2:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/TaskAnimationManager;->lambda$startRecentsAnimation$2$com-android-quickstep-TaskAnimationManager(Landroid/content/Intent;J)V

    return-void
.end method
