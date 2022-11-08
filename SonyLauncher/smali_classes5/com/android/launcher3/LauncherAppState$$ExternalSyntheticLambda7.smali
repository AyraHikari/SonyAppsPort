.class public final synthetic Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/SafeCloseable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/SafeCloseable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda7;->f$0:Lcom/android/launcher3/util/SafeCloseable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda7;->f$0:Lcom/android/launcher3/util/SafeCloseable;

    invoke-interface {v0}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    return-void
.end method
