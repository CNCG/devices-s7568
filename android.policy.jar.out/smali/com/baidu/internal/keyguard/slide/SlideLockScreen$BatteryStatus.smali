.class Lcom/baidu/internal/keyguard/slide/SlideLockScreen$BatteryStatus;
.super Ljava/lang/Object;
.source "SlideLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SlideLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatteryStatus"
.end annotation


# instance fields
.field public final health:I

.field public final level:I

.field public final plugged:I

.field public final status:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .parameter "status"
    .parameter "level"
    .parameter "plugged"
    .parameter "health"

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$BatteryStatus;->status:I

    .line 456
    iput p2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$BatteryStatus;->level:I

    .line 457
    iput p3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$BatteryStatus;->plugged:I

    .line 458
    iput p4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$BatteryStatus;->health:I

    .line 459
    return-void
.end method
