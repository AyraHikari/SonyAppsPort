.class public final synthetic Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/OverviewCommandHelper;

.field public final synthetic f$1:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

.field public final synthetic f$2:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/quickstep/OverviewCommandHelper;

    iput-object p2, p0, Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda3;->f$1:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    iput-object p3, p0, Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda3;->f$2:Lcom/android/quickstep/AbsSwipeUpHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/quickstep/OverviewCommandHelper;

    iget-object v1, p0, Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda3;->f$1:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    iget-object v2, p0, Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda3;->f$2:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/OverviewCommandHelper;->lambda$executeCommand$3$com-android-quickstep-OverviewCommandHelper(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void
.end method
