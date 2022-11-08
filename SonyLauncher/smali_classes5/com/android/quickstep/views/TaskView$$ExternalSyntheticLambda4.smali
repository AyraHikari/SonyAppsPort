.class public final synthetic Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/Consumer;

    invoke-static {v0}, Lcom/android/quickstep/views/TaskView;->lambda$launchTaskInternal$4(Ljava/util/function/Consumer;)V

    return-void
.end method
