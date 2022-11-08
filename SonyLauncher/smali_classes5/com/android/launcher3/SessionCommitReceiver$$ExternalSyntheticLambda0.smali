.class public final synthetic Lcom/android/launcher3/SessionCommitReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/SessionCommitReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/SessionCommitReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/SessionCommitReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/SessionCommitReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/launcher3/SessionCommitReceiver;->lambda$onReceive$0(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
