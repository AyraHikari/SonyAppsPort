.class public Lcom/sonyericsson/music/common/DataSaverUtil$DataSaverStatus;
.super Ljava/lang/Object;
.source "DataSaverUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/DataSaverUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataSaverStatus"
.end annotation


# instance fields
.field private final mRestrictedBackgroundStatus:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/sonyericsson/music/common/DataSaverUtil$DataSaverStatus;->mRestrictedBackgroundStatus:I

    return-void
.end method

.method private debugLogging(ZIZ)V
    .locals 0

    return-void
.end method


# virtual methods
.method public isAllowedToSendData(I)Z
    .locals 3

    .line 71
    iget v0, p0, Lcom/sonyericsson/music/common/DataSaverUtil$DataSaverStatus;->mRestrictedBackgroundStatus:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 72
    invoke-direct {p0, v1, p1, v1}, Lcom/sonyericsson/music/common/DataSaverUtil$DataSaverStatus;->debugLogging(ZIZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    .line 87
    :goto_0
    :pswitch_1
    invoke-direct {p0, v0, p1, v1}, Lcom/sonyericsson/music/common/DataSaverUtil$DataSaverStatus;->debugLogging(ZIZ)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 125
    iget v1, p0, Lcom/sonyericsson/music/common/DataSaverUtil$DataSaverStatus;->mRestrictedBackgroundStatus:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "Enabled"

    goto :goto_0

    :pswitch_1
    const-string v0, "Whitelisted"

    goto :goto_0

    :pswitch_2
    const-string v0, "Disabled"

    goto :goto_0

    :cond_0
    const-string v0, "Inactive"

    .line 139
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataSaverStatus {Restricted Background Status= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
