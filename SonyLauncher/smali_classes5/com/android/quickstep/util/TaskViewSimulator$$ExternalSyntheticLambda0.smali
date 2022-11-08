.class public final synthetic Lcom/android/quickstep/util/TaskViewSimulator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/android/quickstep/BaseActivityInterface;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/TaskViewSimulator$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/quickstep/util/TaskViewSimulator$$ExternalSyntheticLambda0;->f$1:Lcom/android/quickstep/BaseActivityInterface;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/TaskViewSimulator$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/util/TaskViewSimulator$$ExternalSyntheticLambda0;->f$1:Lcom/android/quickstep/BaseActivityInterface;

    invoke-static {v0, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->lambda$new$1(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    return-object v0
.end method
