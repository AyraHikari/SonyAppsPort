.class public final synthetic Lcom/android/launcher3/hybridhotseat/HotseatRestoreHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatRestoreHelper$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatRestoreHelper$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/hybridhotseat/HotseatRestoreHelper;->lambda$createBackup$0(Landroid/content/Context;)V

    return-void
.end method
