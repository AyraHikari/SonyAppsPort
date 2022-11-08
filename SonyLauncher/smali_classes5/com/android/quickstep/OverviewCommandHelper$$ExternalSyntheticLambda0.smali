.class public final synthetic Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/OverviewCommandHelper;

.field public final synthetic f$1:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/OverviewCommandHelper;

    iput-object p2, p0, Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/OverviewCommandHelper;

    iget-object v1, p0, Lcom/android/quickstep/OverviewCommandHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/OverviewCommandHelper;->lambda$launchTask$1$com-android-quickstep-OverviewCommandHelper(Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    return-void
.end method
