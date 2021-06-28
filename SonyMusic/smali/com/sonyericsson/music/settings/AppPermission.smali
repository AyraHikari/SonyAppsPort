.class public Lcom/sonyericsson/music/settings/AppPermission;
.super Ljava/lang/Object;
.source "AppPermission.java"


# instance fields
.field private mEnabled:Z

.field private final mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sonyericsson/music/settings/AppPermission;->mLabel:Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lcom/sonyericsson/music/settings/AppPermission;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/sonyericsson/music/settings/AppPermission;->mEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/sonyericsson/music/settings/AppPermission;->mEnabled:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/sonyericsson/music/settings/AppPermission;->mLabel:Ljava/lang/String;

    return-object v0
.end method
