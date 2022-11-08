.class public final synthetic Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/LauncherProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/LauncherProvider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/LauncherProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider;->lambda$call$3$com-android-launcher3-LauncherProvider()Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    move-result-object v0

    return-object v0
.end method
