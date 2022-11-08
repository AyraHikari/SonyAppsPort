.class public final synthetic Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setRank(I)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    return-void
.end method
