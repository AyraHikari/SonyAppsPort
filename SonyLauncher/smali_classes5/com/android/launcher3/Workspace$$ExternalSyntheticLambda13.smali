.class public final synthetic Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/Workspace;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda13;->f$0:Lcom/android/launcher3/Workspace;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda13;->f$0:Lcom/android/launcher3/Workspace;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->lambda$addExtraEmptyScreens$2$com-android-launcher3-Workspace(Ljava/lang/Integer;)V

    return-void
.end method
