.class public final synthetic Lcom/android/launcher3/BaseQuickstepLauncher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/BaseQuickstepLauncher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/BaseQuickstepLauncher$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/BaseQuickstepLauncher;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast p1, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-static {v0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->$r8$lambda$2feEpvckQJLOC3pfwy3mA8nCyaQ(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method
