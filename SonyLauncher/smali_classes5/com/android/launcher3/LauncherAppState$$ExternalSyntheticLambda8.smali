.class public final synthetic Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/LauncherAppState$IconObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAppState$IconObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda8;->f$0:Lcom/android/launcher3/LauncherAppState$IconObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$$ExternalSyntheticLambda8;->f$0:Lcom/android/launcher3/LauncherAppState$IconObserver;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState$IconObserver;->verifyIconChanged()V

    return-void
.end method
