.class final Lcom/sonyericsson/music/dialogs/AddToDialog$SetSelection;
.super Ljava/lang/Object;
.source "AddToDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/dialogs/AddToDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SetSelection"
.end annotation


# instance fields
.field private final mAddTo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/dialogs/AddToDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/dialogs/AddToDialog;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/dialogs/AddToDialog$SetSelection;->mAddTo:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/AddToDialog$SetSelection;->mAddTo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/dialogs/AddToDialog;

    if-eqz v0, :cond_0

    .line 117
    invoke-static {v0}, Lcom/sonyericsson/music/dialogs/AddToDialog;->access$100(Lcom/sonyericsson/music/dialogs/AddToDialog;)Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v0}, Lcom/sonyericsson/music/dialogs/AddToDialog;->access$000(Lcom/sonyericsson/music/dialogs/AddToDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    const/4 v1, -0x1

    .line 118
    invoke-static {v0, v1}, Lcom/sonyericsson/music/dialogs/AddToDialog;->access$002(Lcom/sonyericsson/music/dialogs/AddToDialog;I)I

    :cond_0
    return-void
.end method
