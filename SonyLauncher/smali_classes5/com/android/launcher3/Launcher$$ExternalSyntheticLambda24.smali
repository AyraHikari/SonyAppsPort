.class public final synthetic Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda24;->f$0:Lcom/android/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda24;->f$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->lambda$handleActivityResult$3$com-android-launcher3-Launcher()V

    return-void
.end method
