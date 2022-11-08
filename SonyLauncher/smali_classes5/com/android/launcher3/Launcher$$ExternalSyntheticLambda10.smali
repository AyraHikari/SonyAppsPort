.class public final synthetic Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/Launcher;

.field public final synthetic f$1:Landroid/app/NotificationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Landroid/app/NotificationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda10;->f$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda10;->f$1:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda10;->f$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda10;->f$1:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/Launcher;->lambda$onCreate$0$com-android-launcher3-Launcher(Landroid/app/NotificationManager;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
