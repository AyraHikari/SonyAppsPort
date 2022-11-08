.class public final synthetic Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->lambda$createAppWidgetHost$4$com-android-launcher3-Launcher(I)V

    return-void
.end method
