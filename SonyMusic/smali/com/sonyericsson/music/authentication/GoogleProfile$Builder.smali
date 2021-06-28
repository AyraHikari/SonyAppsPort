.class public Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;
.super Ljava/lang/Object;
.source "GoogleProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/authentication/GoogleProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mAccountName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accountName(Ljava/lang/String;)Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;->mAccountName:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/sonyericsson/music/authentication/GoogleProfile;
    .locals 1

    .line 91
    new-instance v0, Lcom/sonyericsson/music/authentication/GoogleProfile;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/authentication/GoogleProfile;-><init>(Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;)V

    return-object v0
.end method
