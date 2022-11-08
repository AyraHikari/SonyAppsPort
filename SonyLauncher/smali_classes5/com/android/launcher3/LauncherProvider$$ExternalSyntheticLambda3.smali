.class public final synthetic Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/LauncherProvider;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherProvider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/LauncherProvider;

    iput-object p2, p0, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/LauncherProvider;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProvider;->lambda$call$2$com-android-launcher3-LauncherProvider(Ljava/lang/String;)Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    move-result-object v0

    return-object v0
.end method
