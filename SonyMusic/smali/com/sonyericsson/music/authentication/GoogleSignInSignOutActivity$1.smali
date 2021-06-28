.class Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$1;
.super Ljava/lang/Object;
.source "GoogleSignInSignOutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$1;->this$0:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 165
    iget-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$1;->this$0:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;

    .line 167
    invoke-static {p1}, Lcom/sonymobile/music/common/NetworkConnectivityUtil;->hasNetworkConnection(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f100232

    const/4 v1, 0x1

    .line 168
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$1;->this$0:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;

    invoke-static {p1}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->access$000(Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;)V

    :goto_0
    return-void
.end method
