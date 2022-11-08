.class public final synthetic Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;

.field public final synthetic f$1:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda6;->f$0:Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;

    iput-object p2, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda6;->f$1:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda6;->f$0:Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;

    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda6;->f$1:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->lambda$log$0$com-android-quickstep-logging-StatsLogCompatManager$StatsCompatLogger(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method
