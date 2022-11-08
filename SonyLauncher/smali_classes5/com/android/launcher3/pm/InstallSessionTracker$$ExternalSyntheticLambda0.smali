.class public final synthetic Lcom/android/launcher3/pm/InstallSessionTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/pm/InstallSessionTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/pm/InstallSessionTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/pm/InstallSessionTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/pm/InstallSessionTracker;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/pm/InstallSessionTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/pm/InstallSessionTracker;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    check-cast p2, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/pm/InstallSessionTracker;->lambda$getActiveSessionMap$0$com-android-launcher3-pm-InstallSessionTracker(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    return-void
.end method
