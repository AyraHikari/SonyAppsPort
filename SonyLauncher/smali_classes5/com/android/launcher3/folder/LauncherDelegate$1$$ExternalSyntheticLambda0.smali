.class public final synthetic Lcom/android/launcher3/folder/LauncherDelegate$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/LauncherDelegate$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    check-cast p1, Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    return-object p1
.end method
