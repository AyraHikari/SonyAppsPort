.class public final synthetic Lcom/android/launcher3/model/AppEventProducer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/AppEventProducer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/AppEventProducer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/AppEventProducer$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/model/AppEventProducer;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/AppEventProducer$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/model/AppEventProducer;

    invoke-static {v0, p1}, Lcom/android/launcher3/model/AppEventProducer;->$r8$lambda$IpUampESGToJCKCXDKhp805J6Hc(Lcom/android/launcher3/model/AppEventProducer;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
