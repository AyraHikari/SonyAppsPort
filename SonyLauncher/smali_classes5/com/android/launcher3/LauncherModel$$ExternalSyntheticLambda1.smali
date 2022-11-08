.class public final synthetic Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/ModelDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/model/ModelDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/model/ModelDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelDelegate;->destroy()V

    return-void
.end method
