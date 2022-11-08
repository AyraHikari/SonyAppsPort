.class public final synthetic Lcom/android/launcher3/util/UiThreadHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/views/ActivityContext;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/ActivityContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/UiThreadHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/views/ActivityContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/UiThreadHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/util/UiThreadHelper;->lambda$hideKeyboardAsync$1(Lcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method
