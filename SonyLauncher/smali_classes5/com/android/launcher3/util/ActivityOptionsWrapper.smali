.class public Lcom/android/launcher3/util/ActivityOptionsWrapper;
.super Ljava/lang/Object;
.source "ActivityOptionsWrapper.java"


# instance fields
.field public final onEndCallback:Lcom/android/launcher3/util/RunnableList;

.field public final options:Landroid/app/ActivityOptions;


# direct methods
.method public constructor <init>(Landroid/app/ActivityOptions;Lcom/android/launcher3/util/RunnableList;)V
    .locals 0
    .param p1, "options"    # Landroid/app/ActivityOptions;
    .param p2, "onEndCallback"    # Lcom/android/launcher3/util/RunnableList;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    .line 32
    iput-object p2, p0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->onEndCallback:Lcom/android/launcher3/util/RunnableList;

    .line 33
    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
