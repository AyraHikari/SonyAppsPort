.class final Lcom/google/android/gms/tagmanager/zzdz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzaid:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdz;->object:Ljava/lang/Object;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/zzdz;->zzaid:Z

    return-void
.end method


# virtual methods
.method public final getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdz;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public final zziu()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdz;->zzaid:Z

    return v0
.end method
