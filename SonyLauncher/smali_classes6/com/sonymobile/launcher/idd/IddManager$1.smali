.class Lcom/sonymobile/launcher/idd/IddManager$1;
.super Ljava/lang/Object;
.source "IddManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/launcher/idd/IddManager;->sendToastOnUiThread(Lcom/sonymobile/launcher/idd/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/launcher/idd/IddManager;

.field final synthetic val$event:Lcom/sonymobile/launcher/idd/Event;


# direct methods
.method constructor <init>(Lcom/sonymobile/launcher/idd/IddManager;Lcom/sonymobile/launcher/idd/Event;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/launcher/idd/IddManager;

    .line 65
    iput-object p1, p0, Lcom/sonymobile/launcher/idd/IddManager$1;->this$0:Lcom/sonymobile/launcher/idd/IddManager;

    iput-object p2, p0, Lcom/sonymobile/launcher/idd/IddManager$1;->val$event:Lcom/sonymobile/launcher/idd/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/sonymobile/launcher/idd/IddManager$1;->this$0:Lcom/sonymobile/launcher/idd/IddManager;

    invoke-static {v0}, Lcom/sonymobile/launcher/idd/IddManager;->-$$Nest$fgetmContext(Lcom/sonymobile/launcher/idd/IddManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/launcher/idd/IddManager$1;->val$event:Lcom/sonymobile/launcher/idd/Event;

    invoke-virtual {v1}, Lcom/sonymobile/launcher/idd/Event;->toJson()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    return-void
.end method
